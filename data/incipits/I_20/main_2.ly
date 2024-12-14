\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 3/2 \tempoMarkup "Adagio"
  a'2^\partVii f' e
  d e h
  c a e'~
  e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
