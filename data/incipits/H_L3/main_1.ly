\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key e \minor \time 3/4 \tempoMarkup "Adagio"
  e4^\partOrg a2
  g8 a g4 fis
  e2 r4
  R2.*2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
