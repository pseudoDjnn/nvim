return {
  "echasnovski/mini.hipatterns",
  version = false,
  config = function()
    require("mini.hipatterns").setup({
      highlighters = {
        fixme = { pattern = 'FIXME', group = 'MiniHipatternsFixme' },
        hack = { pattern = 'HACK', group = 'MiniHipatternsHack' },
        todo = { pattern = 'TODO', group = 'MiniHipatternsTodo' },
        note = { pattern = 'NOTE', group = 'MiniHipatternsNote' },
        { pattern = '%f[%s]%s*$', group = 'Error' },
      },
        delay = {
        text_change = 1000,
      },
      })
    end
}
