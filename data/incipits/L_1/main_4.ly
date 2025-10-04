\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 3/4 \tempoMarkup "Menuet"
  e'8^\partVi f g2
  e8 f g2
  f4 d c
  h c r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
