local M = {}

local FORMAT_FILE_CMD = ':!gren format --yes "%"'
local FILE_PATTERN = "*.gren"

-- @class gren.Options
M.options = {
  use_treesitter = true,
}

--@type opts? gren.Options
function M.extend(opts)
  M.options = opts or M.options

  if M.options.use_treesitter then
    M.options.use_treesitter = true
  end
end

function M.format_file()
  vim.cmd.edit()
  vim.cmd(FORMAT_FILE_CMD)
  vim.cmd.edit()
end

function M.ensure_treesitter()
  require("nvim-treesitter.install").ensure_installed("gren")
end

function M.setup_commands()
  vim.api.nvim_create_user_command("GrenFormat", M.format_file, {})
end

--@type opts? gren.Options
function M.setup(opts)
  M.extend(opts)
  vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = FILE_PATTERN,
    callback = function()
      vim.cmd.setfiletype "gren"

      if M.options.use_treesitter then
        M.ensure_treesitter()
      end
    end
  })

  M.setup_commands()
end

return M
