\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key a \minor \time 4/4
  a'2 gis4 r
  r2 r8 g g g
  f4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
