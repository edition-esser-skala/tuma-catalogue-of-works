\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key g \dorian \time 4/4 \tempoMarkup "Grave"
  g'8^\partOrg g g g g2\fermata
  r f
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
