local M = {}

M.version = "0.0.2"

function M.setup()
  vim.cmd.autocmd "BufNewFile,BufRead *.gren setfiletype gren"
  local ts = require 'nvim-treesitter.install'

  ts.ensure_installed "gren"
end

return M
