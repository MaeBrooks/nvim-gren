local M = {}

M.version = "0.0.1"

--@class nvimgren.Config
M.defaults = {
  parser_config = {
    filetype = "gren",
    install_info = {
      branch = "main",
      files = { "src/parser.c", "src/scanner.c" },
      url = "https://github.com/MaeBrooks/tree-sitter-gren",
    }
  }
}

--@type nvim.gren.Config
M.options = nil

function M.load()
  print("Mae loading!")
end

function M.require_query_files()
  M.options.parser_config.install_info.url
end

function M.add_filetype()
  vim.cmd.autocmd "BufNewFile,BufRead *.gren setfiletype gren"
end

--@param opts? nvimgren.Config
function M.extend(opts)
  return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

--@param opts? nvimgren.Config
function M.setup(opts)
  M.extend(opts)
  M.add_filetype()
  M.require_query_files()

  local ts = require "nvim-treesitter.configs"
  local parsers = require "nvim-treesitter.parsers"

  parsers.get_parser_configs().gren = options.parser_config
end

return M
