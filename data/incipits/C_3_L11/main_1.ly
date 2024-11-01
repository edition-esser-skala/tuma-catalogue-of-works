\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4 \tempoMarkup "Recitativo"
  c4^\partOrg r d r
  c1
  d2 h
  c b
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
