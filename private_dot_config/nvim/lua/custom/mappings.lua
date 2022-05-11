local map = nvchad.map

-- telescope
map("n", "<leader>fp", ":Telescope media_files <CR>")
map("n", "<leader>te", ":Telescope <CR>")

-- truezen
map("n", "<leader>ta", ":TZAtaraxis <CR>")
map("n", "<leader>tm", ":TZMinimalist <CR>")
map("n", "<leader>tf", ":TZFocus <CR>")

-- MyOwm
map("n", "<leader>w", ":w <CR>") -- save
map("n", "<leader>z", ":q <CR>") -- quit
map("n", "<leader>qa", ":qa <CR>") -- quit all

map("n", "<C-k>", ":SymbolsOutline <CR>") -- quit all
