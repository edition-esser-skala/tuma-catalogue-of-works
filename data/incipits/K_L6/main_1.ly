\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "[no tempo]"
  c'16^\partVi c' h c g c h c e, c' h c
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
