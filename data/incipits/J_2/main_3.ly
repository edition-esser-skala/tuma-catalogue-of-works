\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twofourtime \key g \major \time 2/4 \tempoMarkup "Andante ma allegretto"
  \partial 8 d'8^\partVi d g fis e
  d4 r8 d
  g, c16 a e8 fis
  g4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
