-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--

-- neovide settings

if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h17"

  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = -3.0
  vim.g.transparency = 0.9
  vim.g.neovide_background_color = "#0f1117" .. alpha()
  vim.g.neovide_cursor_vfx_mode = "torpedo"
end

vim.lsp.handlers["textDocument/hover"] = false
vim.lsp.handlers["textDocument/signatureHelp"] = false
