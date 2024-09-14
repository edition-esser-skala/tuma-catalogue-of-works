\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \major \time 4/4
  d4 r d8 d' d, e
  fis4 r a,8 a' a, h
  cis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
