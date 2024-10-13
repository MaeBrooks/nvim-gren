# Nvim Gren

Neovim [Gren](https://gren-lang.org/) support

## Requirements

- [tree-sitter-gren](https://github.com/MaeBrooks/tree-sitter-gren/blob/main/editors/nvim/README.md)

## NOTE

All this does is configure Neovim to automatically detect `.gren` files and setup [tree-sitter-gren](https://github.com/MaeBrooks/tree-sitter-gren/blob/main/editors/nvim/README.md) to automatically install gren

## Setup

Simply add using your favourite package manager and call `setup()`

```lua
local gren = require "MaeBrooks/nvim-gren"

gren.setup()
```

### 'Lazy' package manager example config

```lua
{
    "Maebrooks/nvim-gren",
    dependencies = { "nvim-treesitter/nvim-treesitter" }
}
```
