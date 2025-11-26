-- LEADER --
vim.g.mapleader = " " -- sets leader key

-- COLORSCHEME --
vim.cmd.colorscheme("catppuccin-mocha")
-- OPTIONS --
-- Disable welcome screen and show empty buffer
vim.opt.shortmess:append("I")        -- Disable intro message
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
vim.o.autoindent = true              -- copy indentation from the current line
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
vim.o.signcolumn = "yes"             --  only use sign column when there is something to put there
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
vim.opt.completeopt = { "menu", "menuone", "noselect", "noinsert" }
vim.o.winborder = "rounded"
-- https://ftp.nluug.nl/vim/runtime/spell/ru.utf-8.spl
-- vim.fn.stdpath("data") .. '/spell'
vim.opt.spelllang = { "en_us", "ru_ru" }
vim.o.grepprg = "rg --vimgrep"   -- use ripgrep
vim.o.grepformat = "%f:%l:%c:%m" -- filename, line number, column, content

-- netrw config
vim.g.netrw_banner = 0                  -- gets rid of the annoying banner for netrw
-- vim.g.netrw_altv = 0                    -- change from left splitting to right splitting
vim.g.netrw_liststyle = 0               -- tree style view in netrw
vim.g.netrw_sizestyle = "H"
vim.g.netrw_sort_sequence = [[[\/]$,*]] -- sort directories first
vim.g.netrw_keepdir = 0
vim.g.netrw_hide = 1
vim.g.netrw_localcopydircmd = "cp -r"
vim.g.netrw_localmkdir = "mkdir -p"
vim.g.netrw_localrmdir = "rm -r"
vim.g.netrw_compress = "gzip"
vim.g.netrw_cursor = 2
vim.g.netrw_alto = 1
vim.g.netrw_preview = 1
-- folding
vim.opt.foldmethod = "syntax" -- Change to 'expr' if you prefer
vim.opt.foldlevel = 20        -- Adjust based on your preference
vim.opt.foldlevelstart = 20
vim.opt.foldenable = true
vim.opt.foldopen = "block,hor,mark,percent,quickfix,search,tag,undo" -- Automatically open folds
-- vim.opt.foldclose = "hor,mark"                                       -- Close folds when moving cursor

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
    "efm-ls", -- one and for: stylua, pylint
    "rust_analyzer",
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
        if client and client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end

        -- Only set up if the client supports documentHighlight
        if client and client.server_capabilities.documentHighlightProvider then
            -- Highlight on CursorHold
            -- vim.opt.updatetime = 300 -- to setup this timeout
            vim.api.nvim_create_autocmd("CursorHold", {
                buffer = ev.buf,
                callback = function() vim.lsp.buf.document_highlight() end,
                desc = "LSP document highlight",
            })

            -- Clear highlights on cursor movement/exit
            vim.api.nvim_create_autocmd({ "CursorMoved", "InsertEnter", "BufLeave" }, {
                buffer = ev.buf,
                callback = function() vim.lsp.buf.clear_references() end,
                desc = "Clear LSP highlights",
            })
        end
    end,
})

-- vim.cmd("s-

--- AUTOCOMMANDS
vim.cmd("autocmd FocusGained,BufEnter * :checktime")
vim.cmd("autocmd FileType text,markdown,txt setlocal spell spelllang=en,ru_ru")
vim.cmd("autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4")
vim.cmd("autocmd FileType javascript,typescript setlocal expandtab shiftwidth=2 tabstop=2")
vim.cmd("autocmd FileType html,css setlocal expandtab shiftwidth=2 tabstop=2")
vim.cmd("autocmd FileType lua setlocal expandtab shiftwidth=2 tabstop=2")
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.lua", "*.py", "*.js", "*.ts", "*.json", "*.go" },
    callback = function()
        if vim.lsp.buf.format then vim.lsp.buf.format({ async = true }) end
    end,
    desc = "Auto-format on save",
})
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function() vim.highlight.on_yank({ higroup = "IncSearch", timeout = 400 }) end,
    desc = "Highlight yank",
})

-- KEYMAPS --
-- editor
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>r", ":source " .. vim.fn.stdpath("config") .. "/init.lua<CR>")
vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "File browser (cwd)" })

-- lsp keymaps
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true, desc = "Go to Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { noremap = true, silent = true, desc = "Go to Declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { noremap = true, silent = true, desc = "Go to Implementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { noremap = true, silent = true, desc = "Show References" })
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { noremap = true, silent = true, desc = "Show References" })
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
-- vim.keymap.set("n", "<leader>bb", ":call setqflist(map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), '{\"bufnr\": v:val}')) | copen<CR>")
vim.keymap.set("n", "<leader>bb", function()
    vim.fn.setqflist(
        vim.tbl_filter(
            function(b)
                return vim.api.nvim_buf_is_valid(b.bufnr) and
                vim.api.nvim_get_option_value("buflisted", { buf = b.bufnr })
            end,
            vim.tbl_map(function(buf)
                local name = vim.api.nvim_buf_get_name(buf)
                return {
                    bufnr = buf,
                    filename = name == "" and "[No Name]" or name,
                    text = name == "" and "[No Name]"
                        or vim.fn.fnamemodify(name, ":t")
                        .. (vim.api.nvim_get_option_value("modified", { buf = buf }) and " [+]" or ""),
                }
            end, vim.api.nvim_list_bufs())
        ),
        "r"
    )
    vim.cmd("copen | wincmd J")
end, { desc = "List buffers in quickfix" })

-- insert mode navigation
vim.keymap.set("i", "<C-h>", "<left>")  -- control+h moves cursor left
vim.keymap.set("i", "<C-l>", "<right>") -- control+l moves cursor right
vim.keymap.set("i", "<C-j>", "<down>")  -- control+j moves cursor down
vim.keymap.set("i", "<C-k>", "<up>")    -- control+k moves cursor up
-- Add line below in insert mode with Alt+Enter, along with alt+o
vim.keymap.set("i", "<A-CR>", "<Esc>o", { noremap = true, silent = true, desc = "Add line below in insert mode" })
-- Add line above in insert mode with Alt+Shift+Enter, along with alt+O
vim.keymap.set("i", "<A-S-CR>", "<Esc>O", { noremap = true, silent = true, desc = "Add line above in insert mode" })

-- Visual Maps
vim.keymap.set("v", "<leader>r", '"hy:%s/<C-r>h//g<left><left>') -- Replace all instances of highlighted words
vim.keymap.set("v", "<C-s>", ":sort<CR>")                        -- Sort highlighted text in visual mode with Control+S
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")                     -- Move current line down
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")                     -- Move current line up

-- Move selected blocks around
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv") -- Move current line up
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv") -- Move current line down

-- Quickfix list
vim.keymap.set("n", "<C-q>", ":copen<CR>") -- open in quickfix list on Ctrl+Q
vim.keymap.set("n", "<leader>lx", function()
    local items = {}
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.api.nvim_buf_is_valid(buf) and vim.api.nvim_get_option_value("buflisted", { buf = buf }) then
            for _, diag in ipairs(vim.diagnostic.get(buf)) do
                table.insert(items, {
                    bufnr = buf,
                    lnum = diag.lnum + 1,
                    col = diag.col + 1,
                    text = diag.message,
                    type = ({ "E", "W", "I", "H" })[diag.severity] or "E",
                })
            end
        end
    end
    vim.fn.setqflist(items, "r")
    vim.cmd("copen")
end, { desc = "All LSP diagnostics to quickfix" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })
vim.keymap.set("v", "=", "=gv", { desc = "Reindent and reselect" })

-- A function to handle both normal and visual mode toggling
local function toggle_comment_smart()
    -- Check the current editor mode
    local mode = vim.api.nvim_get_mode().mode
    if mode:find("v") or mode:find("V") then
        -- If in visual mode, simulate pressing 'gc' to comment the selection
        vim.api.nvim_feedkeys("gc", "normal", true)
    else
        -- If in normal mode, simulate pressing 'gcc' to comment the current line
        vim.api.nvim_feedkeys("gcc", "normal", true)
    end
end

-- Example of mapping this function to a key combination (e.g., Ctrl + /)
vim.keymap.set({ "n", "v" }, "<leader>/", toggle_comment_smart, { silent = true })

-- Toggle fold at cursor
vim.keymap.set("n", "<space>z", "za", { noremap = true, silent = true, desc = "Toggle fold at cursor" })
-- Close fold at cursor
vim.keymap.set("n", "<space>zc", "zc", { noremap = true, silent = true, desc = "Close fold at cursor" })
-- Open fold at cursor
vim.keymap.set("n", "<space>zo", "zo", { noremap = true, silent = true, desc = "Open fold at cursor" })
-- Close all folds
vim.keymap.set("n", "<space>zC", "zM", { noremap = true, silent = true, desc = "Close all folds" })
-- Open all folds
vim.keymap.set("n", "<space>zO", "zR", { noremap = true, silent = true, desc = "Open all folds" })

-- Move to next fold
vim.keymap.set("n", "]z", "zj", { noremap = true, silent = true, desc = "Move to next fold" })
-- Move to previous fold
vim.keymap.set("n", "[z", "zk", { noremap = true, silent = true, desc = "Move to previous fold" })
vim.keymap.set("n", "[z", "zk", { noremap = true, silent = true, desc = "Move to previous fold" })
vim.keymap.set("n", "[z", "zk", { noremap = true, silent = true, desc = "Move to previous fold" })
vim.keymap.set("n", "[z", "zk", { noremap = true, silent = true, desc = "Move to previous fold" })
vim.keymap.set("n", "[z", "zk", { noremap = true, silent = true, desc = "Move to previous fold" })
