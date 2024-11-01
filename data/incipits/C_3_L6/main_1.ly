\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4 \tempoMarkup "Recitativo · Andante"
  c8^\partOrg c c c' c, c c c'
  c,4 r8 c d4 r8 h
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
