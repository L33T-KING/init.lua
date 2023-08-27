require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
  "python", 
  "vimdoc",
  "javascript",
  "typescript",
  "c",
  "lua",
  "rust",
  "tsx",
  "typescript",
  "json"
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
  },

  --local parser_configs = require('nvim-treesitter.parsers').get_parser_configs(),
  --parser_configs.tsx.used_by = { "javascript", "typescript.tsx" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
