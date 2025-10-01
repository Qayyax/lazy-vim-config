# Need to Know

### Theme related

Since I have multiple themes installed, I had the issue of any of the themes loading at random when I open a new NeoVim instace.  
Which is why in the configs related to themes you would see that I set `lazy = true`
Then the theme I am currently using is then set to the default with

```lua
{
    lazy = false,
    priority = 1000
}
```

Little reminder: the keybind for changing theme quickly is `<leader>cs` which stands for **ColorSchemes**

> Keep note of this while going through my config.

> [Email me](mailto:qayyax@gmail.com) for any updates or suggestions, heck even questions.

### AI & Terminal Setup

- Install `copilot-language-server` so Sidekick has an LSP backend available (Mason can grab it quickly).
- Install `zellij` because Sidekick's CLI is configured to run inside it.
- Check the Sidekick documentation for workflow guidance: https://github.com/folke/sidekick.nvim
