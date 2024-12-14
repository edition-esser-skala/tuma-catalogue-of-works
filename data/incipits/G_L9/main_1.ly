\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4 \tempoMarkup "Allegro"
  c'4^\partOrg g c,8 r r4
  r2 r8 c e f
  g4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
