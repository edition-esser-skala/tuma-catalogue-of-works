\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4 \tempoMarkup "Largo"
  c4^\partOrg e8 f g4 e
  f d h c
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
