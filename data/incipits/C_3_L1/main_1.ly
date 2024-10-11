\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Recitativo"
  r16^\partVi g'' f e d c h c \grace c h f' d c h a g f
  e4 e'
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
