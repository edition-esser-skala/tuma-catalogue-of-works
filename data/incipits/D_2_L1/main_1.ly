\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \major \time 4/4 \tempoMarkup "Allegro"
  d4^\partOrg r a8 a16. h32 cis8 cis16. d32
  e8[ e,]
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
