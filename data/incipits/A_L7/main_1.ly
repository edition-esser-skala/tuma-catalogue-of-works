\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \major \time 4/4 \autoBeamOff
  d2 d4 d
  d2 \clef alto a''
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
