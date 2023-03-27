return {
	"norcalli/nvim-colorizer.lua",
	version = "*",
	config = function ()
		require('colorizer').setup {
			'css';
			'javascript';
			'yaml';
			'toml';
			html = {
				mode = 'foreground';
			}
		}
	end,
}
