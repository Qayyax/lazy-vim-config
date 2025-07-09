# Nvim Config

This is a Nvim config with Lazy as the package manager.

![Lua for Nvim docs](https://neovim.io/doc/user/lua-guide.html])

---

Here are some notes that I took from the docs

# Lua for NVIM

**Vim API** inherited from Vim are written different

- `Ex-commands` - `vim.cmd()`
- `builtin-functions` - `vim.fn`

**Nvim API** (written in C) functions are accessed through `vim.api`

**Lua API** (written in Lua) are any other functions accessible through `vim.*` not mentioned already; (I don't know what this means yet)

So this distinctions is important, becuase the API functions inherit behavior from their original layer;

- Nvim API functions always need all arguments to be specified even if Lua itself allows omitting arguments
- Vim API functions can use 0-based indexing even if Lua arrays are 1-indexed

## Using Lua

To run luad code from Nvim command line, use the `:lua` command:

```bash
:lua print("Hello!")
```

> Each `:lua` command has its own scope and variable declared witht he local keyword are not accessible outside of the command.

```bash
:lua local foo = 1
:lua print(foo)
# prints "nil" instead of "1"
```

To run a lua script in an external file, you can use the `:source` command exactly like for a Vimscript file: (I don't even know what that is like)

```bash
:source ~/programs/baz/myluafile.lua
```

finally, you can include Lua code in Vimscript file by putting it inside a `:lua-heredoc` block:

```vim
lua << EOF
    local tbl = {1, 2, 3}
    for k, v in ipairs(tbl) do
        print(v)
    end
EOF
```

## Using Lua files on startup

Nvim supports using `init.lua` or `init.vim` as the configuration file, but not both at the same time.
This should be placed in your `config` directory (run `:echo stdpath('config')` to see where it is).

> Note that you can also use Lua in `init.vim` and Vimscript in `init.lua`.

> If you'd like to run any other Lua script on `startup` automatically, then you can put it in `plugin/` in your `runtimepath` -- (I don't know what this is too)

## Lua modules

if you want to load Lua files on demand, you canplace then in the `lua/` directory in your `runtimepath` (in my case ~./config/nvim) and load them with `require`.

Let's assume you have the following directory structure:

```bash
~/.config/nvim
|-- after/
|-- ftplugin/
|-- lua/
|   |-- myluamodule.lua
|   |-- other_modules/
|       |-- anothermodule.lua
|       |-- init.lua
|-- plugin/
|-- syntax/
|-- init.vim
```

Then the following Lua code will load `myluamodule.lua`:

```lua
require("myluamodule")
-- note that thre is no .lua in the require

-- to load submodules
require('other_modules/anothermodule')
-- or
require('other_modules.anothermodule')
```

A folder containing `init.lua` file can be required directly, without having to specify the name of the file (kind of like app/page.tsx in Next.js):

```lua
require('other_modules')
-- This would load other_modules/init.lua
```

Requiring a nonexistent module or a module which constains syntax errors abots the currently executing script.
`pcall()` may be used to catch such errors. The following example tries to load the `module_with_error` and only calls one of its functions if this succeeds and prints and error message otherwise:

```lua
lcoal ok, mymod = pcall(require, 'module_with_error')
if not ok then
    print("Module had an error")
else
    mymod.func()
end
```

## Using Vim commands and functions from Lua

All Vim commands and functions are accessible from Lua.

### Vim commands

To run an arbirary Vim command from Lua, pass it as a string to `vim.cmd()`

```lua
vim.cmd("colorscheme habamax")

-- Note that special characters will need to be escaped with backslashes:
vim.cmd("%s/\\Vfoo/bar/g")

-- An alternative is to use a literal string delimited by double brackets [[ ]]
vim.cmd([[%s/\Vfoo/bar/g]]) -- if you don't want to use the \ to escape special characters

-- Another benefit of using literal string is that they can be multiple lines;
-- this allows you to pass multiple commands to a single call of vim.cmd()
vim.cmd([[
    highlight Error guibg=red
    highlight link Warning Error
]])
```

If you want to build your Vim command programmatically, the following form can be useful (still the same as the one above though)

```lua
vim.cmd.colorscheme("habamax")
vim.cmd.highlight({ "Error", "guibg=red" })
vim.cmd.highlight({ "Link", "Warning", "Error" })
```

## Vimscript functions

Use `vim.fn` to call Vimscript functions from Lua. Data types between Lua and Vimscript are automatically converted:

```lua
print(vim.fn.printf('Hello from %s', 'Lua'))
local reveresed_list = vim.fn.reverse({ 'a', 'b', 'c' })
vim.print(reversed_list) --- { "c", "b", "a" }
local function print_stdout(chan_id, data, name)
    print(data[1])
end

vim.fn.jobstart('ls', { on_stdout = print_stdout })

-- Note that hashes (#)k are not valid characters for identifiers in Lua,
-- e.g., autoload functions have to be called with this syntax:
vim.fn["my#autoload#funcdtion"]()
```

## Variables

Variables can be set and read using the following wrappes, which directly correspond to their variable-scope:

- `vim.g`: global variables (`g:`)
- `vim.b`: variables for the current buffer (`b:`)
- `vim.w`: variables for the current window (`w:`)
- `vim.t`: variables for the current tabpage (`t:`)
- `vim.v`: predefined Vim variables (`v:`)
- `vim.env`: environment variables defined in the editor session

## Options

There are two complementary ways of setting options via Lua.

### vim.opt

The most convenient way for setting global and local options, e.g., in `init.lua`, is through `vim.opt` and friends:

- `vim.opt`: behaves like `:set`
- `vim.opt_global`: behaves like `:setglobal`
- `vim.opt`: begaves like `:setlocal`

For example, the Vimscript commands

```vim
set smarttab
set nosmarttab
```

are equivalent to

```lua
vim.opt.smarttab = true
vim.opt.smarttab = false

-- when working with list-like, map-like, and set-like options through Lua tables:
-- You can use
vim.opt.wildignore = { '*.o', '*.a', '__pychache__' }
```

### vim.o

Rather than using the above, you can use a more direct varaible-like access using `vim.o` and friends, similarly to how you can get and set options via `:echo &number` and `:let &listchars='space:_,tab:>~'`:

- `vim.o`: behaves like `:set`
- `vim.go`: behaves like `:setglobal`
- `vim.bo`: for buffer-scoped options
- `vim.wo`: for window-scoped options (can be double indexed)

## Mappings

You can map either Vim commands or Lua functions to key sequences.

### Creating mappings

Mappings can be created using `vim.keymap.set()`. This function takes three mandatory arguments:

- `{mode}` is a string or a table of strings containing the mode prefix for which the mapping will take effect. The prefixes are the ones listed in `:map-modes`, or "!" for `:map!`, or empty strings for `:map`
- `{lhs}` is a string witht he key sequences that should trigger the mapping.
- `{rhs}` is either a string with a Vim command or a Lua function that should be executed when the `{lhs}`

Examples:

```lua
-- Normal mode mapping for Vim command
vim.keymap.set('n', '<Leader>ex1', '<cmd>echo "Example 1"<cr>')
-- Normal and Command-line mode mapping for Vim command
vim.keymap.set({'n', 'c'}, '<Leader>ex1', '<cmd>echo "Example 1"<cr>')
-- Normal mode mapping for Lua function
vim.keymap.set('n', '<Leader>ex1', vim.treesitter.start)
-- Normal mode mapping for Lua function with arguments
vim.keymap.set('n', '<leader>ex4', function() print('Example 4') end)

-- MAPPING FUNCTIONS FROM LUA MODULES
vim.keymap.set('n', '<leader>pl1', require('plugin').action)

-- note though, this would load the plugin at the time the mapping is defined
-- you can defer the loading to the time when the  mapping is executed by
-- wrapping it in function() end:
vim.keymap.set('n', '<Leader>pl2', function() require('plugin').action() end)
```

## AutoCommands

This is a Vim command or Lua function that is automatically executed whenever one or more events are triggered, e.g., when a file is read or written, or when a window is created.

Autocommands are created using `vim.api.nvim_create_autocmd()`, which takes two mandatory arguments:

- `{event}`: a string or table of strings containing the event(s) which should trigger the command or function.
- `{opts}`: a table with keys that control what should happen when the event(s) are triggered.

The most important **options** are :

- `pattern`: A string or table of strings containing the autocomd-patter.
- `command`: a string containing a vim command
- `callback`: A Lua function

You must specify one and only one of `command` and `callback`. if `pattern` is omitted, it defaults to `pattern = '*'`

```lua
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    pattern = {"*.c", "*.h"},
    command = "echo 'Entering a C or C++ file'",
})

-- Same autocommand written with a Lua function instead
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = {"*.c", "*.h"},
    command = function() print("Entereing a C or C++ file") end,
})

-- User event triggered by MyPlugin
vim.api.nvim_create_autocmd("User", {
    pattern = "MyPlugin",
    callback = function() print("My Plugin Works!") end,
})
```
