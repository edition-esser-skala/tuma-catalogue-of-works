\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 3/4 \tempoMarkup "Menuet"
  d'4^\partVi g e
  d g, r
  g' fis r
  a g r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
