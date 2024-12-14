\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key b \major \time 4/4 \tempoMarkup "Allegro"
  f4^\partOrg r r2
  R1
  r4 r8 a b[ b,]
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
