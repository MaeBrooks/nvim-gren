local M = {}

M.version = "0.0.1"

function M.setup()
  vim.cmd.autocmd "BufNewFile,BufRead *.gren setfiletype gren"
end

return M
