
-- standalone
    return { "vigoux/ltex-ls.nvim",
             dependencies = { "neovim/nvim-lspconfig" },

             config = function()
               require("ltex-ls").setup({
                 on_attach = on_attach,
                 capabilities = capabilities,
                 use_spellfile = false,
                 filetypes = { "latex", "tex", "bib", "markdown", "gitcommit", "text" },
                 settings = {
                   ltex = {
                     enabled = { "latex", "tex", "bib", "markdown" },
--       -- language = "en-US",
                     language = "auto",
                     -- diagnosticSeverity = "information",
                     diagnosticSeverity = "warning",
                     checkFrequency = "save",
                     setenceCacheSize = 2000,
                     additionalRules = {
                       enablePickyRules = true,
                       motherTongue = "en-US",
                     },
                     trace = { server = "verbose" },
                     disabledRules = {
                       -- ["en-US"] = { "PASSIVE_VOICE" },
                       ["en"] = { "PASSIVE_VOICE", "WANT" },
                     },
--       -- dictionary = (function()
--       --   -- For dictionary, search for files in the runtime to have
--       --   -- and include them as externals the format for them is
--       --   -- dict/{LANG}.txt
--       --   --
--       --   -- Also add dict/default.txt to all of them
--       --   local files = {}
--       --   for _, file in ipairs(vim.api.nvim_get_runtime_file("dict/*", true)) do
--       --     local lang = vim.fn.fnamemodify(file, ":t:r")
--       --     local fullpath = vim.fs.normalize(file, ":p")
--       --     files[lang] = { ":" .. fullpath }
--       --   end
--       --
--       --   if files.default then
--       --     for lang, _ in pairs(files) do
--       --       if lang ~= "default" then
--       --         vim.list_extend(files[lang], files.default)
--       --       end
--       --     end
--       --     files.default = nil
--       --   end
--       --   return files
--       -- end)(),
                    },
                  },
                })

               -- disable line diagnostics at end of line
               vim.diagnostic.config({
                 virtual_text = false
               })
               -- Show line diagnostics automatically in hover window
               vim.o.updatetime = 250
               vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
               vim.keymap.set('n', '[g', '<cmd>lua vim.diagnostic.goto_prev({ float =  { border = "single" }})<CR>', opts)
               vim.keymap.set('n', ']g', '<cmd>lua vim.diagnostic.goto_next({ float =  { border = "single" }})<CR>', opts)
             end,

           }

