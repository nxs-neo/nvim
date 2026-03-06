return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#181825',
				base01 = '#181825',
				base02 = '#9f939b',
				base03 = '#9f939b',
				base04 = '#ffeffa',
				base05 = '#fff8fd',
				base06 = '#fff8fd',
				base07 = '#fff8fd',
				base08 = '#ff9fa7',
				base09 = '#ff9fa7',
				base0A = '#ffd1f2',
				base0B = '#bfffa5',
				base0C = '#ffe7f8',
				base0D = '#ffd1f2',
				base0E = '#ffd9f4',
				base0F = '#ffd9f4',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#9f939b',
				fg = '#fff8fd',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#ffd1f2',
				fg = '#181825',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#9f939b' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffe7f8', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#ffd9f4',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#ffd1f2',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#ffd1f2',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#ffe7f8',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#bfffa5',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#ffeffa' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#ffeffa' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#9f939b',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
