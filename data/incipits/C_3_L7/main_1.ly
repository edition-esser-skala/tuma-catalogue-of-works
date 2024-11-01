\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4 \tempoMarkup "Chorus"
  c8^\partOrg d e f e c16 d e8 f
  e c a h
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
