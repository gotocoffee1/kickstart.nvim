return {
  'akinsho/bufferline.nvim',
  dependencies = {

    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    require('bufferline').setup {
      options = {
        offsets = {
          {
            filetype = 'neo-tree',
            text = function()
              return vim.fn.getcwd()
            end,
            highlight = 'Directory',
            text_align = 'left',
          },
        },
      },
    }
  end,
}
