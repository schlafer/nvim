return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")

    wk.setup({
      win = { border = "rounded" },
    })

    wk.add({
      -- Normal mode mappings
      { "<C-k>", vim.lsp.buf.signature_help, desc = "Signature Help", mode = "n" },
      { "K", vim.lsp.buf.hover, desc = "Hover Doc", mode = "n" },

      -- Goto (LSP)
      { "gr", "<cmd>Telescope lsp_references<cr>", desc = "References", mode = "n" },
      { "gd", "<cmd>Telescope lsp_definitions<cr>", desc = "Definition", mode = "n" },
      { "gD", vim.lsp.buf.declaration, desc = "Declaration", mode = "n" },
      { "gi", "<cmd>Telescope lsp_implementations<cr>", desc = "Implementation", mode = "n" },
      { "gt", "<cmd>Telescope lsp_type_definitions<cr>", desc = "Type Definition", mode = "n" },
      { "gW", "<cmd>Telescope lsp_workspace_symbols<cr>", desc = "Workspace Symbols", mode = "n" },
      { "g0", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols", mode = "n" },
      { "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<cr>", desc = "Preview Definition", mode = "n" },
      { "gP", "<cmd>lua require('goto-preview').goto_preview_type_definition()<cr>", desc = "Preview Type Definition", mode = "n" },

      -- Leader groups
      { "<leader>f", group = "file" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fx", "<cmd>Telescope treesitter<cr>", desc = "Treesitter" },
      { "<leader>fs", "z=", desc = "Spelling Suggestions" },

      { "<leader>c", group = "code" },
      { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action" },

      { "<leader>l", group = "lsp" },
      { "<leader>la", "<cmd>GoCodeLenAct<cr>", desc = "Code Lens Action" },

      { "<leader>r", group = "rename" },
      { "<leader>rn", vim.lsp.buf.rename, desc = "Rename" },

      { "<leader>k", "<cmd>lua vim.lsp.buf.clear_references()<cr>", desc = "Toggle Ref Highlight" },
      { "<leader>g", group = "goto" },
      { "<leader>gt", "<cmd>Telescope treesitter<cr>", desc = "Treesitter Symbols" },

      { "<leader>d", group = "diagnostics" },
      { "<leader>dt", "<cmd>lua vim.diagnostic.disable()<cr>", desc = "Diagnostics Toggle" },

      -- Navigation
      { "]r", "<cmd>lua require('illuminate').next_reference{wrap=true}<cr>", desc = "Next Reference", mode = "n" },
      { "[r", "<cmd>lua require('illuminate').next_reference{reverse=true,wrap=true}<cr>", desc = "Prev Reference", mode = "n" },
      { "]s", "]s", desc = "Next Misspelled Word", mode = "n" },
      { "s]", "s]", desc = "Next Misspelled Word", mode = "n" },

      -- Editing
      { "gq", "gq", desc = "Reformat Paragraph", mode = "n" },

      -- Comments
      { "gcc", "<Plug>(comment_toggle_linewise_current)", desc = "Toggle Line Comment", mode = "n" },
      { "gbc", "<Plug>(comment_toggle_blockwise_current)", desc = "Toggle Block Comment", mode = "n" },

      -- Insert mode
      {
        mode = { "i" },
        { "<C-f>", "<cmd>lua vim.lsp.util.scroll_preview(1)<cr>", desc = "Scroll Down Doc" },
        { "<C-b>", "<cmd>lua vim.lsp.util.scroll_preview(-1)<cr>", desc = "Scroll Up Doc" },
        { "<A-c>", "<cmd>Telescope file_browser create<cr>", desc = "Create File/Folder" },
        { "<A-r>", "<cmd>Telescope file_browser rename<cr>", desc = "Rename" },
        { "<A-y>", "<cmd>Telescope file_browser copy<cr>", desc = "Copy" },
        { "<A-d>", "<cmd>Telescope file_browser delete<cr>", desc = "Delete" },
      },

      -- Visual mode
      {
        mode = { "v" },
        { "iw", "iw", desc = "Select Word" },
        { "i(", "i(", desc = "Inside ()" },
        { "a(", "a(", desc = "Around ()" },
      },
    })
  end,
}
