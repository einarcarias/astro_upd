return {
  "windwp/nvim-autopairs",
  config = function(plugin, opts)
    require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
    -- add more custom autopairs configuration such as custom rules
    local npairs = require "nvim-autopairs"
    local Rule = require "nvim-autopairs.rule"
    local cond = require "nvim-autopairs.conds"
    npairs.add_rules {
      Rule("\\(", "\\)", { "tex", "latex" })
        --       -- don't add a pair if the next character is %
        :with_pair(cond.not_after_regex "%%")
        --       -- don't add a pair if  the previous character is xxx
        --       :with_pair(cond.not_before_regex("xxx", 3))
        --       -- don't move right when repeat character
        :with_move(
          cond.none()
        )
        --       -- don't delete if the next character is xx
        --       :with_del(cond.not_after_regex "xx")
        --       -- disable adding a newline when you press <cr>
        :with_cr(
          cond.none()
        ),
    }
    npairs.add_rules {
      Rule("$", "$", { "tex", "latex" })
        --       -- don't add a pair if the next character is %
        :with_pair(cond.not_after_regex "%%")
        --       -- don't add a pair if  the previous character is xxx
        --       :with_pair(cond.not_before_regex("xxx", 3))
        --       -- don't move right when repeat character
        :with_move(
          cond.none()
        )
        --       -- don't delete if the next character is xx
        --       :with_del(cond.not_after_regex "xx")
        --       -- disable adding a newline when you press <cr>
        :with_cr(
          cond.none()
        ),
    }
    npairs.remove_rule("`", "tex")
    npairs.remove_rule("(", "tex")
  end,
}
