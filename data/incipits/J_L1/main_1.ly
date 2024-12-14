\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 3/8 \tempoMarkup "Allegro"
  r8^\partVi r d'
  es \grace d c4
  d8 \grace c b4
  c8 \grace b a4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
