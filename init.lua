-- LEADER --
vim.g.mapleader = " " -- sets leader key

-- COLORSCHEME --
vim.cmd.colorscheme("catppuccin-mocha")

-- OPTIONS --
vim.o.title = true                   -- show title
vim.o.syntax = "ON"                  -- set syntax to ON
vim.o.backup = false                 -- turn off backup file
vim.o.writebackup = false            -- do not write backup
vim.o.swapfile = false               -- turn off swapfile
vim.o.undofile = true                -- set undo file
vim.o.undodir = vim.fn.stdpath("state") .. "/undo"
vim.o.updatetime = 300               -- decrease update time to improve snappiness
vim.o.cursorline = true              -- set highlighted cursor line
vim.o.autoread = true                -- re-read files in case they were edited outside of vim
vim.o.autowrite = false              -- do not auto write file when changing buffers and such
vim.o.compatible = false             -- turn off vi compatibility mode
vim.o.number = true                  -- turn on line numbers
vim.o.relativenumber = true          -- turn on relative line numbers
vim.o.mouse = "a"                    -- enable the mouse in all modes
vim.o.ignorecase = true              -- enable case insensitive searching
vim.o.smartcase = true               -- all searches are case insensitive unless there's a capital letter
vim.o.smartindent = true             -- smart auto-indenting when starting a new line
vim.o.hlsearch = false               -- disable all highlighted search results
vim.o.incsearch = true               -- enable incremental searching
vim.o.wrap = false                   -- enable text wrapping
vim.o.tabstop = 4                    -- tabs=4spaces
vim.o.shiftwidth = 4                 -- tabs=4spaces
vim.o.expandtab = true               -- convert tabs to spaces
vim.o.fileencoding = "utf-8"         -- encoding set to utf-8
vim.o.pumheight = 10                 -- number of items in popup menu
vim.o.showtabline = 2                -- always show the tab line
vim.o.laststatus = 2                 -- always show statusline
vim.o.signcolumn = "yes"            --  only use sign column when there is something to put there
-- vim.o.colorcolumn = "80"             -- set color column to 80 characters
vim.o.showcmd = true                 -- show the command
vim.o.showmatch = true               -- highlight matching brackets
vim.o.cmdheight = 1                  -- set command line height
vim.o.showmode = false               -- do not show the mode since it's already in the status line
vim.o.scrolloff = 8                  -- scroll page when cursor is 8 lines from top/bottom
vim.o.sidescrolloff = 8              -- scroll page when cursor is 8 spaces from left/right
vim.o.clipboard = "unnamedplus"      -- use the system clipboard
vim.o.wildmenu = true                -- use the wild menu
vim.o.wildmode = "longest:full,full" -- set wile menu options
vim.o.path = "+=**"                  -- search files recursively
vim.o.splitbelow = true              -- split go below
vim.o.splitright = true              -- vertical split to the right
vim.o.termguicolors = true           -- terminal gui colors
vim.o.cmdwinheight = 10              -- cmd window can only take up this many lines
vim.opt.completeopt = { "menuone", "noselect", "noinsert" }
vim.o.winborder = "rounded"

-- FILE TYPE --
vim.cmd("filetype plugin on")

-- LSP --
vim.lsp.enable({
  "basedpyright",
  "ruff",
  -- "pylsp", -- old version of pylint<4 plugin doesn't recognize pyproject.toml
  "gopls",
  "golangci-lint",
  "buf_ls",
  -- "protols", -- duplicates buf_ls
  "lua_ls",
  "ts_ls",
  "html",
  "jsonls",
  "bashls",
  "yamlls",
  "taplo",
  "dockerls",
  "docker_compose_language_service",
})

vim.lsp.inlay_hint.enable()

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 4,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "●",
      [vim.diagnostic.severity.WARN] = "●",
      [vim.diagnostic.severity.INFO] = "●",
      [vim.diagnostic.severity.HINT] = "●",
    },
  },
  update_in_insert = false,
  underline = true,
  severity_sort = true,
})
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

-- vim.cmd("s-

--- AUTOCOMMANDS
vim.cmd("autocmd FocusGained,BufEnter * :checktime")
vim.cmd("autocmd FileType text,markdown,txt setlocal spell spelllang=en")
vim.cmd("autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4")
vim.cmd("autocmd FileType javascript,typescript setlocal expandtab shiftwidth=2 tabstop=2")
vim.cmd("autocmd FileType html,css setlocal expandtab shiftwidth=2 tabstop=2")
vim.cmd("autocmd FileType lua setlocal expandtab shiftwidth=2 tabstop=2")

-- KEYMAPS --
-- editor
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>r", ":source " .. vim.fn.stdpath("config") .. "/init.lua<CR>")

-- lsp keymaps
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true, desc = "Go to Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { noremap = true, silent = true, desc = "Go to Declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { noremap = true, silent = true, desc = "Go to Implementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { noremap = true, silent = true, desc = "Show References" })
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { noremap = true, silent = true, desc = "Rename Symbol" })
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "Code Action" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true, desc = "Hover Documentation" })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { noremap = true, silent = true, desc = "Signature Help" })
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { noremap = true, silent = true, desc = "Format Buffer" })

-- easy split generation
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>") -- space+v creates a veritcal split
vim.keymap.set("n", "<leader>hs", ":split<CR>")  -- space+s creates a horizontal split

-- easy split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h") -- control+h switches to left split
vim.keymap.set("n", "<C-l>", "<C-w>l") -- control+l switches to right split
vim.keymap.set("n", "<C-j>", "<C-w>j") -- control+j switches to bottom split
vim.keymap.set("n", "<C-k>", "<C-w>k") -- control+k switches to top split

-- buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext <CR>")     -- Tab goes to next buffer
vim.keymap.set("n", "<leader>bp", ":bprevious <CR>") -- Shift+Tab goes to previous buffer
vim.keymap.set("n", "<leader>bd", ":bd! <CR>")       -- Space+d delets current buffer

-- insert mode navigation
vim.keymap.set("i", "<C-h>", "<left>")  -- control+h moves cursor left
vim.keymap.set("i", "<C-l>", "<right>") -- control+l moves cursor right
vim.keymap.set("i", "<C-j>", "<down>")  -- control+j moves cursor down
vim.keymap.set("i", "<C-k>", "<up>")    -- control+k moves cursor up

-- Visual Maps
vim.keymap.set("v", "<leader>r", '"hy:%s/<C-r>h//g<left><left>') -- Replace all instances of highlighted words
vim.keymap.set("v", "<C-s>", ":sort<CR>")                        -- Sort highlighted text in visual mode with Control+S
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")                     -- Move current line down
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")                     -- Move current line up

-- Move selected blocks around
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv") -- Move current line up
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv") -- Move current line down
