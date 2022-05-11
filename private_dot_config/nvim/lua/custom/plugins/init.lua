return {
    ["Mofiqul/dracula.nvim"] = {},
 --  ["luukvbaal/stabilize.nvim"] = {
 --     config = function()
 --       require("stabilize").setup()
 --     end
 --   },
    ["simrat39/symbols-outline.nvim"] = {
      config = function()
        require("custom.plugins.outline")
      end,
    },
    ["karb94/neoscroll.nvim"] = {
      config = function()
        require("neoscroll").setup()
      end,

      -- lazy loading
      setup = function()
        nvchad.packer_lazy_load "neoscroll.nvim"
      end,
    },
    -- ["karb94/neoscroll.nvim"] = {
    --   opt = true,
    --   config = function()
    --     require("neoscroll").setup()
    --   end,
    --
    --   -- lazy loading
    --   setup = function()
    --     nvchad.packer_lazy_load "neoscroll.nvim"
    --   end,
    -- },
    ["timjstewart/spring.vim"] = {},
    ["windwp/nvim-ts-autotag"] = {
      ft = { "html", "javascriptreact" },
      after = "nvim-treesitter",
      config = function()
        require("nvim-ts-autotag").setup()
      end,
    },

    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
        require("custom.plugins.null-ls").setup()
      end,
    },

    ["nvim-telescope/telescope-media-files.nvim"] = {
      after = "telescope.nvim",
      config = function()
        require("telescope").setup {
          extensions = {
            media_files = {
              filetypes = { "png", "webp", "jpg", "jpeg" },
            },
            -- fd is needed
          },
        }
        require("telescope").load_extension "media_files"
      end,
    },

    ["Pocco81/TrueZen.nvim"] = {
      cmd = {
        "TZAtaraxis",
        "TZMinimalist",
        "TZFocus",
      },
      config = function()
        require "custom.plugins.truezen"
      end,
    },
}
