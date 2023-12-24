return {
  -- angle
  s({ trig = "\ang", dscr = "Expands '\ang' into '\\ang{}'" }, fmta([[\ang{<>}]], { i(1) })),
  -- float
  s(
    { trig = "subfloat", dscr = "Expands 'subfloat' into 'subfloat[]{}'" },
    fmta(
      [[
    \subfloat[<>]{\includegraphics[width=<>\textwidth]{<>}}
]],
      { i(1), i(2), i(3) }
    )
  ),
}
