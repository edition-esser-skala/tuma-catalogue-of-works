\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \dorian \time 4/4 \tempoMarkup "Grave"
  c2^\partOrg d
  R1
  b2 as
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
