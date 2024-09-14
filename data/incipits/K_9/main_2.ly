\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 2/4 \tempoMarkup "Andante"
  g''4^\partVii g,
  r8 a d, c'
  \grace c b4 g
  r8 a d, c'
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
