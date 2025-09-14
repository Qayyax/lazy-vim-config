# My Keymaps Reference

# Neovim Keymaps Reference

## Leader Key

- **Leader**: `<space>` (Space bar)
- **Local Leader**: `<space>` (Space bar)

## Basic Navigation & Movement

### Insert Mode

| Keymap | Action  | Description      |
| ------ | ------- | ---------------- |
| `jk`   | `<Esc>` | Exit insert mode |

### Normal Mode Movement

| Keymap    | Action     | Description                              |
| --------- | ---------- | ---------------------------------------- |
| `j`       | Smart down | Move down (respects word wrap)           |
| `k`       | Smart up   | Move up (respects word wrap)             |
| `<Space>` | Disabled   | Space does nothing in normal/visual mode |

### Visual Mode

| Keymap      | Action | Description                   |
| ----------- | ------ | ----------------------------- |
| `>`         | `>gv`  | Indent and maintain selection |
| `<leader>y` | `"+y`  | Copy to system clipboard      |

## Window Management

### Window Splitting

| Keymap      | Action   | Description               |
| ----------- | -------- | ------------------------- |
| `<leader>v` | `<C-w>v` | Split window vertically   |
| `<leader>s` | `<C-w>s` | Split window horizontally |
| `<leader>=` | `<C-w>=` | Split windows evenly      |
| `<leader>x` | `<C-w>q` | Close current window      |

### Window Navigation

| Keymap  | Action     | Description               |
| ------- | ---------- | ------------------------- |
| `<C-h>` | Move left  | Navigate to left window   |
| `<C-j>` | Move down  | Navigate to bottom window |
| `<C-k>` | Move up    | Navigate to top window    |
| `<C-l>` | Move right | Navigate to right window  |

### Tmux Integration

| Keymap  | Action               | Description                 |
| ------- | -------------------- | --------------------------- |
| `<C-h>` | `:TmuxNavigateLeft`  | Navigate left (tmux aware)  |
| `<C-j>` | `:TmuxNavigateDown`  | Navigate down (tmux aware)  |
| `<C-k>` | `:TmuxNavigateUp`    | Navigate up (tmux aware)    |
| `<C-l>` | `:TmuxNavigateRight` | Navigate right (tmux aware) |

## File & Buffer Management

### File Operations

| Keymap            | Action        | Description                     |
| ----------------- | ------------- | ------------------------------- |
| `<leader><space>` | Buffers       | Show open buffers               |
| `<leader>n`       | File Explorer | Open file explorer              |
| `<leader>ff`      | Find Files    | Find files in current directory |
| `<leader>fc`      | Find Config   | Find files in Neovim config     |
| `<leader>fp`      | Projects      | Browse projects                 |
| `<leader>fr`      | Recent Files  | Show recent files               |

## Search & Grep

### Text Search

| Keymap       | Action       | Description                    |
| ------------ | ------------ | ------------------------------ |
| `<leader>fg` | Grep         | Search text in files           |
| `<leader>/`  | Buffer Lines | Search lines in current buffer |
| `<leader>//` | Grep Buffers | Search in all open buffers     |
| `<leader>/w` | Grep Word    | Search for word under cursor   |

### Registers & Commands

| Keymap       | Action    | Description             |
| ------------ | --------- | ----------------------- |
| `<leader>s"` | Registers | Show registers          |
| `<leader>sc` | Commands  | Show available commands |

## Git Integration

### Git Operations

| Keymap       | Action       | Description            |
| ------------ | ------------ | ---------------------- |
| `<leader>gb` | Git Branches | Show git branches      |
| `<leader>gf` | Git Files    | Find git tracked files |
| `<leader>gl` | Git Log      | Show git log           |
| `<leader>gs` | Git Status   | Show git status        |
| `<leader>gS` | Git Stash    | Show git stash         |
| `<leader>gd` | Git Diff     | Show git diff hunks    |
| `<leader>lg` | Lazy Git     | Open LazyGit           |

## LSP (Language Server Protocol)

### Code Navigation

| Keymap | Action                | Description             |
| ------ | --------------------- | ----------------------- |
| `gd`   | Go to Definition      | Jump to definition      |
| `gD`   | Go to Declaration     | Jump to declaration     |
| `gr`   | References            | Show references         |
| `gi`   | Go to Implementation  | Jump to implementation  |
| `gt`   | Go to Type Definition | Jump to type definition |

### Code Actions

| Keymap       | Action       | Description                 |
| ------------ | ------------ | --------------------------- |
| `K`          | Hover        | Show hover information      |
| `<leader>ca` | Code Actions | Show available code actions |
| `<space>rn`  | Rename       | Rename symbol               |

### Diagnostics

| Keymap      | Action             | Description              |
| ----------- | ------------------ | ------------------------ |
| `<leader>q` | Diagnostics        | Show project diagnostics |
| `<leader>e` | Buffer Diagnostics | Show buffer diagnostics  |

## Completion & Snippets

### Completion Navigation

| Keymap      | Action      | Description                 |
| ----------- | ----------- | --------------------------- |
| `<C-b>`     | Scroll Up   | Scroll documentation up     |
| `<C-f>`     | Scroll Down | Scroll documentation down   |
| `<C-Space>` | Complete    | Trigger completion          |
| `<C-e>`     | Abort       | Abort completion            |
| `<CR>`      | Confirm     | Confirm completion          |
| `<Tab>`     | Next Item   | Select next completion item |

## Utility & Help

### Documentation & Help

| Keymap       | Action       | Description                  |
| ------------ | ------------ | ---------------------------- |
| `<leader>sh` | Help Pages   | Search help pages            |
| `<leader>sk` | Keymaps      | Show all keymaps             |
| `<leader>sm` | Man Pages    | Search man pages             |
| `<leader>sp` | Plugin Specs | Search plugin specifications |

### System Integration

| Keymap       | Action        | Description            |
| ------------ | ------------- | ---------------------- |
| `<leader>si` | Icons         | Browse available icons |
| `<leader>sl` | Location List | Show location list     |
| `<leader>sq` | Quickfix      | Show quickfix list     |
| `<leader>su` | Undo History  | Browse undo history    |
| `<leader>sR` | Resume        | Resume last picker     |

## Terminal

### Terminal Management

| Keymap       | Action          | Description                  |
| ------------ | --------------- | ---------------------------- |
| `<leader>tt` | Toggle Terminal | Open/close floating terminal |

## Todo Comments

### Todo Management

| Keymap       | Action         | Description                    |
| ------------ | -------------- | ------------------------------ |
| `<leader>tl` | Todo/Fix/Fixme | Find TODO, FIX, FIXME comments |

## Theme & UI

### Appearance

| Keymap       | Action       | Description                    |
| ------------ | ------------ | ------------------------------ |
| `<leader>cs` | Colorschemes | Browse and switch colorschemes |

## Dashboard Shortcuts

### Dashboard Actions

| Key | Action          | Description              |
| --- | --------------- | ------------------------ |
| `f` | Find File       | Find files in project    |
| `n` | New File        | Create new file          |
| `g` | Find Text       | Search text in files     |
| `r` | Recent Files    | Show recent files        |
| `c` | Config          | Open Neovim config       |
| `s` | Restore Session | Restore previous session |
| `L` | Lazy            | Open Lazy plugin manager |
| `u` | Update Lazy     | Update all plugins       |
| `q` | Quit            | Quit Neovim              |

## Code Folding

### Fold Management

| Keymap | Action      | Description               |
| ------ | ----------- | ------------------------- |
| `za`   | Toggle Fold | Toggle fold under cursor  |
| `zc`   | Close Fold  | Close fold under cursor   |
| `zo`   | Open Fold   | Open fold under cursor    |
| `zR`   | Open All    | Open all folds in buffer  |
| `zM`   | Close All   | Close all folds in buffer |
| `zf`   | Create Fold | Create fold for selection |
| `zd`   | Delete Fold | Delete fold under cursor  |

### Fold Navigation

| Keymap | Action        | Description                   |
| ------ | ------------- | ----------------------------- |
| `zj`   | Next Fold     | Move to next fold             |
| `zk`   | Previous Fold | Move to previous fold         |
| `[z`   | Fold Start    | Move to start of current fold |
| `]z`   | Fold End      | Move to end of current fold   |

### BufferLine

| Keymap       | Action                | Description                                    |
| ------------ | --------------------- | ---------------------------------------------- |
| `<leader>tp` | BufferLineTogglePin   | Toggles Pin for Buffer line                    |
| `<leader>bb` | BufferLineGotToBuffer | Receives buffer number and goes to that buffer |

## Notes

- **Leader key** is set to Space (`<space>`)
- **Auto-pairs** are enabled for brackets, quotes, etc.
- **Format on save** is enabled for supported file types
- **Highlight on yank** shows what was copied
- **Case-insensitive search** unless uppercase letters are used
- **Mouse support** is enabled
- **Relative line numbers** are displayed
