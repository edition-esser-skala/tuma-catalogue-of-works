\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 3/8 \tempoMarkup "Allegro"
  a'8^\partVii a, a'
  h4.
  c8 c, c'
  d4.
  e16 d c d e f
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
