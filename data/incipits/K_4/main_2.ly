\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 3/4 \tempoMarkup "Allegro"
  \partial 4 g''4^\partVi g, \grace h8 a4.\trill g16 a
  h4 g g,
  a'8 h c h c d
  \grace c4 h2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
