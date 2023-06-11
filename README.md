# Move On to AstroNvim
*My AstroNvim Configuration* [AstroNvim](https://github.com/strbagus/astronvim_config)

---

# MY NEOVIM
My own **NEOVIM** Configuration.

![Neovim Image](https://drive.google.com/uc?id=1MrEePih5H4dk9DBe5IOwKS7vZaqTNe30)

## Plugin Manager
- Packer: [wbthomason/packer](https://github.com/wbthomason/packer.nvim)

## Plugins 
- Theme: [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- File Explorer: [preservim/nerdtree](https://github.com/preservim/nerdtree)
	- Git Status: [Xuyuanp/nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
- Inline Git Status: [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- Status Bar: [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- Language Support: [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Git Client: [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- Time Monitoring: [wakatime/vim-wakatime](https://github.com/wakatime/vim-wakatime)
- Auto Pairs Bracket: [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
- LSP: [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
	 - Support: 
		- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
		- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
		- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
	- Autocompletion: 
		- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
		- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
		- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- Fuzy Finding File Explorer: [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- Discord Presence: [andweeb/presence.nvim](https://github.com/andweeb/presence.nvim)
- BufferTab: [ap/vim-buftabline](https://github.com/ap/vim-buftabline)
## Keybinds

*Notes:*
- `<C>` = `Ctrl`
- `<leader>` = `Space`
- `<CR>` = `Enter`
- `<A>` = `Alt`
- `*` means must focus on target file on NERDTree file explorer

| Function                              | Mode   | Key                | Source          |
| ------------------------------------- | ------ | ------------------ | --------------- |
| Open/Close File Explorer              | Normal | ``<C-n>``          | nerdtree.lua    |
| Move Between Section                  | Normal | `<C-w> w`          |                 |
| Find files inside current Directory   | Normal | `<C-p>`            | telescope.lua   |
| Find old files                        | Normal | `<leader><leader>` | telescope.lua   |
| Find live grep                        | Normal | `<leader> fg`      | telescope.lua   |
| Open Git Status                       | Normal | `<leader> gs`      | fugitive.lua    |
| Split div to compare git changes      | Normal | `<leader> gb`      | fugitive.lua    |
| Turn On/Off git inline changes info   | Normal | `<C-n>`            | gitgutter.lua   |
| Turn On/Off git changes Hightlighting | Normal | `<leader> gn`      | gitgutter.lua   |
| Select completion prev item           | Insert | `<C-k>`            | completions.lua |
| Select completion next item           | Insert | `<C-j>`            | completions.lua |
| Abort completion                      | Insert | `<C-e>`            | completions.lua |
| Confirm completion                    | Insert | `<CR>`             | completions.lua |
| Get item Definition                   | Normal | `gd`               | lsp_config.lua  |
| Hover item Information                | Normal | `N`                | lsp_config.lua  |
| Move blocked line down                | Visual | `<A-j>`            | setkey.lua      |
| Move blocked line up                  | Visual | `<A-k>`            | setkey.lua      |
| Prev Buffer/tab                       | Normal | `J`                | setkey.lua      |
| Next Buffer/tab                       | Normal | `K`                | setkey.lua      |
| Add new files *                       | Normal | `ma`               |                 |
| Move files *                          | Normal | `mm`               |                 |
| Delete files *                        | Normal | `md`               |                 |
| Copy files *                          | Normal | `mc`               |                 |
