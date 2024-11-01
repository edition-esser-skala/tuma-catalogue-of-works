\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \major \time 4/4 \tempoMarkup "Recitativo · Adagio"
  d8^\partOrg d d d d d d d
  d1\p
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
