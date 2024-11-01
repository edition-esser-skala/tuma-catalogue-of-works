\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key e \minor \time 3/4 \tempoMarkup "Larghetto"
  e2^\partOrg dis4
  e2 dis4
  e dis h
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
