return {
  -- Shorthand example
  -- s(
  --   "fig", -- LuaSnip expands this to {trig = "hi"}
  --   { t "Hello, world!" }
  -- ),
  -- \example
  -- s({ trig = "tt", dscr = "Expands 'tt' into '\texttt{}'" }, fmta("\\texttt{<>}", { i(1) })),
  --
  --
  -- figures
  s(
    { trig = "fig", dscr = "Expands 'fig' into '\fig{}'" },
    fmta(
      [[\begin{figure}[H]
      \centering
      \includegraphics[width = <>\textwidth]{<>}
      \caption{<>}
      \label{<>}
      \end{figure}]],
      { i(1), i(2), i(3), i(4) }
    )
  ),
  -- wrapfigure
  s(
    { trig = "wrapfig", dscr = "Expands to wrapfigure" },
    fmta(
      [[\begin{wrapfigure}{r}{<>\textwidth}
\centering
    \includegraphics[width = <>\textwidth]{<>}
    \caption{<>}
    \label{<>}
    \end{wrapfigure}

    ]],
      { i(1), i(2), i(3), i(4), i(5) }
    )
  ),
}
