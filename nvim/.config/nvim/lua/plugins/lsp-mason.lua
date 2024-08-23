return {
	{
		"williamboman/mason.nvim",
    lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
	},
	{
		"neovim/nvim-lspconfig",
    lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lsp_config = require("lspconfig")
			lsp_config.lua_ls.setup({
				capabilities = capabilities
			})
			lsp_config.basedpyright.setup({ capabilities = capabilities })
			lsp_config.rust_analyzer.setup({ capabilities = capabilities })
			lsp_config.lemminx.setup({ capabilities = capabilities })
			lsp_config.yamlls.setup({ capabilities = capabilities })
			lsp_config.golangci_lint_ls.setup({ capabilities = capabilities })
			lsp_config.jdtls.setup({ capabilities = capabilities })
			lsp_config.tsserver.setup({ capabilities = capabilities })
			lsp_config.html.setup({ capabilities = capabilities })
			lsp_config.cssls.setup({ capabilities = capabilities })
			lsp_config.clangd.setup({ capabilities = capabilities })
			lsp_config.dockerls.setup({ capabilities = capabilities })
			lsp_config.docker_compose_language_service.setup({ capabilities = capabilities })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
