return {

  s({ trig = "cref", dscr = "Expands 'cref' into '\\cref{}'" }, fmta([[\cref{<>}]], { i(1) })),
  -- units package in latex snippets
  s({ trig = "qty", dscr = "Expands 'qty' into '\\qty{}{}'" }, fmta([[\qty{<>}{<>}]], { i(1), i(2) })),
  s({ trig = "num", dscr = "Expands 'num' into '\\num{}{}'" }, fmta([[\num{<>}]], { i(1) })),
}
