return {
	"Olical/conjure",
	version = "*",
	ft = { "clojure" },
	config = function()
		vim.cmd([[
			let g:conjure#mapping#doc_word = v:false
			let g:conjure#mapping#def_word = v:false
		]])
	end
}
