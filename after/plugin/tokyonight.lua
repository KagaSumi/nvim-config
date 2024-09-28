require('tokyonight').setup({
    transparent = true, -- Use 'transparent_background' instead of 'disable_background'
    style = "night"
    -- other options
})

function ColorMyPencils(color) 
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)

	-- Make the background and floating windows transparent
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" }) -- Optional, makes the sign column transparent too
	vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" }) -- Optional, hides ~ at the end of buffers
end

ColorMyPencils()
