-- ================================================================================================
-- TITLE : volar (vue_ls)
-- ABOUT : Vue Language Server for Vue.js support
-- LINKS :
--   > github : https://github.com/vuejs/language-tools
--   > docs   : https://volar.js.org/
-- ================================================================================================

--- @param capabilities table LSP client capabilities (from nvim-cmp)
--- @return nil
return function(capabilities)
    vim.lsp.config("vue_ls", {
        capabilities = capabilities,
        cmd = { "vue-language-server", "--stdio" },
        filetypes = { "vue" },
        root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
        single_file_support = true,
        init_options = {
            typescript = {
                serverPath = "",
                tsdk = "",
            },
        },
        settings = {
            vue = {
                completion = {
                    autoImport = true,
                    tagCasing = "kebab",
                },
                validation = {
                    template = true,
                    style = true,
                    script = true,
                },
            },
        },
    })
end