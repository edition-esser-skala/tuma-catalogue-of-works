\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key a \major \time 4/4 \tempoMarkup "Andante"
  a'8^\part "bc" a~ a16. d32 cis16. h32 a16. d32 cis16. h32 a16. d32 cis16. h32
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
