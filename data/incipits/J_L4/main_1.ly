\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key b \major \time 4/4 \tempoMarkup "Allegro"
  b4^\partOrg d8. es16 f4 r16 f es d
  g8 es g a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
