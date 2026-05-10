-- ================================================================================================
-- TITLE : jdtls
-- ABOUT : Eclipse JDT Language Server for Java
-- LINKS :
--   > github : https://github.com/eclipse-jdtls/eclipse.jdt.ls
--   > nvim   : https://github.com/mfussenegger/nvim-jdtls
-- ================================================================================================

--- @param capabilities table LSP client capabilities (from nvim-cmp)
--- @return nil
return function(capabilities)
	vim.lsp.config("jdtls", {
		capabilities = capabilities,
		cmd = { "jdtls" },
		root_markers = { ".git", "pom.xml", "build.gradle", "settings.gradle" },
		single_file_support = true,
		settings = {
			java = {
				format = {
					enabled = true,
					settings = {
						url = "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml",
					},
				},
				signatureHelp = { enabled = true },
				contentProvider = { preferred = "fernflower" },
				completion = {
					maxResults = 20,
					matchCase = false,
					favoriteStaticMembers = {
						"org.junit.Assert.*",
						"org.junit.Assume.*",
						"org.junit.jupiter.api.Assertions.*",
						"org.junit.jupiter.api.Assumptions.*",
						"org.junit.jupiter.api.DynamicContainer.*",
						"org.junit.jupiter.api.DynamicTest.*",
						"org.hamcrest.MatcherAssert.assertThat",
						"org.hamcrest.Matchers.*",
						"org.mockito.ArgumentMatchers.*",
						"org.mockito.Mockito.*",
					},
					filteredTypes = {
						"com.sun.*",
						"java.awt.*",
						"com.apple.*",
					},
				},
				sources = {
					organizeImports = {
						starThreshold = 9999,
						staticStarThreshold = 9999,
					},
				},
				codeGeneration = {
					toString = {
						template = "${object}.toString()",
					},
					useBlocks = true,
				},
			},
		},
	})
end
