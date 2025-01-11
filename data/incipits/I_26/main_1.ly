\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "[no tempo]"
  e'4^\markup \remark "clno 1" d e r
  e d e r
  r2 r8 g g f16 e
  d c d e d e f d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
