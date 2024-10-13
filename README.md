# Nvim Gren

Neovim [Gren](https://gren-lang.org/) support

## NOTE

All this does is configure Neovim to automatically detect `.gren` files

If you want syntax highlighting, please refer to the [tree-sitter-gren](https://github.com/MaeBrooks/tree-sitter-gren/blob/main/editors/nvim/README.md) Neovim setup

## Setup

Simply add using your favourite package manager and call `setup()`

```lua
local gren = require "MaeBrooks/nvim-gren"

gren.setup()
```

### 'Lazy' package manager example config

```lua
{ "Maebrooks/nvim-gren" }
```
