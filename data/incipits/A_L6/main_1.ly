\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \major \time 4/4
  d8 r r4 cis8 r r4
  d8 r r4 e8 r a,4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
