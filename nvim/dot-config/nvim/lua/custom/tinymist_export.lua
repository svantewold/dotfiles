local M = {}

local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

-- our picker function: colors
M.pick = function(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = "Tinymist Export",
    finder = finders.new_table {
      results = {
        "Export PDF", "Export SVG", "Export PNG", "Export Markdown", "Export Text"
      },
    },
    sorter = conf.generic_sorter(opts),
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        local selection = action_state.get_selected_entry()
        actions.close(prompt_bufnr)
        if not selection then
          return
        end
        if selection.value == "Export PDF" then
          vim.schedule(function()
            vim.cmd({ cmd = "LspTinymistExportPdf" })
          end)
        end
        if selection.value == "Export SVG" then
          vim.schedule(function()
            vim.cmd({ cmd = "LspTinymistExportSvg" })
          end)
        end
        if selection.value == "Export Markdown" then
          vim.schedule(function()
            vim.cmd({ cmd = "LspTinymistExportMarkdown" })
          end)
        end
        if selection.value == "Export PNG" then
          vim.schedule(function()
            vim.cmd({ cmd = "LspTinymistExportPng" })
          end)
        end
        if selection.value == "Export Text" then
          vim.schedule(function()
            vim.cmd({ cmd = "LspTinymistExportText" })
          end)
        end
      end)
      return true
    end,
  }):find()
end

return M
