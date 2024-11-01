\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \minor \time 3/4 \tempoMarkup "Andante"
  d4^\partOrg r f
  g2 g,4
  a2.
  d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
