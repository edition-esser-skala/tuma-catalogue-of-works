\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key g \minor \time 4/4 \tempoMarkup ""
  g4\p^\partOrg b8 g d'4 d,
  g b8 g f4 f
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
