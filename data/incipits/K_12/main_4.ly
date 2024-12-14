\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/4 \tempoMarkup "Menuet"
  b'4^\partVi d f
  b,,2.
  c'4 f, c'
  d b r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
