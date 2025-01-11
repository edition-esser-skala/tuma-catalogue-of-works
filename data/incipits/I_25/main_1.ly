\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 3/4 \tempoMarkup "Largo"
  d'4^\partVii d g,
  es' d c
  b g8 a b a
  g4 a cis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
