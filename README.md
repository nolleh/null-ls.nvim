<!-- markdownlint-configure-file
{
  "line-length": false,
  "no-inline-html": false
}
-->

# nolleh/null-ls.nvim

because the origin repository has been ARCHIVED ([issue](https://github.com/jose-elias-alvarez/null-ls.nvim/issues/1621)),  
there isn't officially maintained version for that.  
but nvim changed continuously, so null-ls can be out-dated by the new version of nvim.
so this repo is here,   
to support breaking change of nvim.  

--- 
# null-ls.nvim

Use Neovim as a language server to inject LSP diagnostics, code actions, and
more via Lua.

## Motivation

Neovim's LSP ecosystem is growing, and plugins like
[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) and
[trouble.nvim](https://github.com/folke/trouble.nvim) make it a joy to work with
LSP features like code actions and diagnostics.

Unlike the VS Code and coc.nvim ecosystems, Neovim doesn't provide a way for
non-LSP sources to hook into its LSP client. null-ls is an attempt to bridge
that gap and simplify the process of creating, sharing, and setting up LSP
sources using pure Lua.

null-ls is also an attempt to reduce the boilerplate required to set up
general-purpose language servers and improve performance by removing the need
for external processes.

