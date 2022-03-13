lvim.leader = "space"

-- Normal mode
---- Telescope
lvim.keys.normal_mode["<M-f>"] = ":Telescope current_buffer_fuzzy_find case_mode=ignore_case<cr>"
lvim.keys.normal_mode["<C-p>"] = ":Telescope find_files<cr>"
lvim.keys.normal_mode["<M-p>"] = ":Telescope buffers<cr>"
lvim.keys.normal_mode["<M-s>"] = ":Telescope lsp_document_symbols<cr>"

---- Commands
lvim.keys.normal_mode["<M-c>"] = ":noh<cr>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

