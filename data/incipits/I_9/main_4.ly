\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/8 \tempoMarkup "Allegro"
  a'4.^\partVii
  h
  cis16 d e8 a,
  d \appoggiatura cis h4
  cis16 d e8 a,
  d \appoggiatura cis h4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
