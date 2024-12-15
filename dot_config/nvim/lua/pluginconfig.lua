require("lsconfig").setup({
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.elixirls.setup({
        -- you need to specify the executable command mannualy for elixir-ls
        cmd = { "/Users/ashleyconnor/Projects/elixir-ls/release2/language_server.sh" },
        -- set default capabilities for cmp lsp completion source
        capabilities = capabilities,
        })
    end,
})

-- require("lazy").setup({
--   {
--     "hrsh7th/nvim-cmp",
--       config = function()
--         local cmp = require("cmp")
--         cmp.setup({
--           -- add different completion source
--           sources = cmp.config.sources({
--             { name = "nvim_lsp" },
--             { name = "buffer" },
--             { name = "path" },
--           }),
--           -- using default mapping preset
--           mapping = cmp.mapping.preset.insert({
--             ["<C-Space>"] = cmp.mapping.complete(),
--             ["<CR>"] = cmp.mapping.confirm({ select = true }),
--           }),
--           snippet = {
--             -- you must specify a snippet engine
--             expand = function(args)
--               -- using neovim v0.10 native snippet feature
--               -- you can also use other snippet engines
--               vim.snippet.expand(args.body)
--             end,
--           },
--         })
--       end,
--   }
-- })
--
-- require("lazy").setup({
--   {
--     "folke/trouble.nvim",
--     opts = {}, -- for default options, refer to the configuration section for custom setup.
--     cmd = "Trouble",
--     keys = {
--       {
--         "<leader>xx",
--         "<cmd>Trouble diagnostics toggle<cr>",
--         desc = "Diagnostics (Trouble)",
--       },
--       {
--         "<leader>xX",
--         "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
--         desc = "Buffer Diagnostics (Trouble)",
--       },
--       {
--         "<leader>cs",
--         "<cmd>Trouble symbols toggle focus=false<cr>",
--         desc = "Symbols (Trouble)",
--       },
--       {
--         "<leader>cl",
--         "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
--         desc = "LSP Definitions / references / ... (Trouble)",
--       },
--       {
--         "<leader>xL",
--         "<cmd>Trouble loclist toggle<cr>",
--         desc = "Location List (Trouble)",
--       },
--       {
--         "<leader>xQ",
--         "<cmd>Trouble qflist toggle<cr>",
--         desc = "Quickfix List (Trouble)",
--       },
--     }
--   }
-- })
--
-- require("lazy").setup({
--   {
--     "nvim-treesitter/nvim-treesitter",
--     build = ":TSUpdate",
--     config = function()
--     require("nvim-treesitter.configs").setup({
--       ensure_installed = { "elixir", "eex", "heex" },
--       highlight = { enable = true },
--       indent = { enable = true },
--     })
--     end,
--   }
-- })
