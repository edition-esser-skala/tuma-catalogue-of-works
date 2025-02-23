\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \major \time 4/4 \tempoMarkup "Recitativo"
  d2~^\partOrg d4 r
  d r d2
  h4 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
