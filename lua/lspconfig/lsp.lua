local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end
	local function buf_set_option(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end
end


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

require("lspconfig")["lua_ls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig")["rust_analyzer"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
