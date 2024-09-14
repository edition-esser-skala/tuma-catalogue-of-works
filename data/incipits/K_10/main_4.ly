\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/8 \tempoMarkup "Allegro"
  b'8^\partVi b'4
  a16 g f es d c
  d b b'4
  a16 g f es d c
  d c b4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
