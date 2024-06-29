\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/4 \tempoMarkup "[no tempo]"
  a'8^\partVi e a e h' e,
  cis'2 d4
  r e d
  cis16 h a8 cis e a d,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
