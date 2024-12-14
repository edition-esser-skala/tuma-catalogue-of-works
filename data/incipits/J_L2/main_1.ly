\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 4/4 \tempoMarkup "Allegro"
  g''4^\partVi g,8. a16 h8.[ c16 d8. e16]
  d4 d, r cis'
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
