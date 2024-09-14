\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key b \major \time 4/4
  r4 b'2 b4
  b2 r4 b
  b a b g
  e2 f
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
