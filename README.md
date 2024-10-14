# Nvim Gren

Neovim [Gren](https://gren-lang.org/) support

## Requirements

- [tree-sitter-gren](https://github.com/MaeBrooks/tree-sitter-gren/blob/main/editors/nvim/README.md)

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
    dependencies = { "nvim-treesitter/nvim-treesitter" },
}
```

## Auto Formatting

Simply add this to automatically format your current gren file after each write

```lua
vim.cmd.autocmd "BufWritePost *.gren :GrenFormat"
```

## Configuration

`gren.setup()` takes a single optional argument of `opts`

```lua
{
  -- Automatically ensures that the `gren` tree sitter parser is installed using
  -- require("nvim-treesitter.install").ensure_installed("gren")
  -- defaults to true
  use_treesitter = true,
}
```

### Package

| Field              | Description                                             |
| ------------------ | ------------------------------------------------------- |
| `setup(opts?)`     | Takes a single argument of `opts`                       |
| `format_file()`    | writes and formats the current file using `gren format` |
| `make_file(file?)` | runs `gren make <file=%>` - IS NOT SILENT               |
| `make_file_silent(file?)` | runs `gren make <file=%>` - IS SILENT            |


## Commands

| Command       | Action                                                                                    |
| ------------- | ----------------------------------------------------------------------------------------- |
| `:GrenFormat` | `format_file()` - writes and formats the current file using `gren format`                 |
| `:GrenMake`   | `make_file(file)` - runs `gren make <file=%>` where `file` is the first optional argument |

