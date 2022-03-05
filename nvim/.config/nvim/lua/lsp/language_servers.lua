-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Lua language server
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local langservers = {
    'html',
    'cssls',
    'bashls',
    'jsonls',
    'yamlls',
    'texlab',
    'pyright',
    'sumneko_lua',
    'rust_analyzer'
}

for _, server in ipairs(langservers) do
    if server == 'sumneko_lua' then
        require'lspconfig'[server].setup {
            capabilities = capabilities,
            settings = {
                Lua = {
                  runtime = {
                    -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                    version = 'LuaJIT',
                    -- Setup your lua path
                    path = runtime_path,
                  },
                  diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    globals = {'vim'},
                  },
                  workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = vim.api.nvim_get_runtime_file("", true),
                    preloadFileSize = 2048,
                    checkThirdParth = false
                  },
                  -- Do not send telemetry data containing a randomized but unique identifier
                  telemetry = {
                    enable = false,
                  },
                },
            },
        }
    else
        require'lspconfig'[server].setup {
            capabilities = capabilities
        }
    end
end
