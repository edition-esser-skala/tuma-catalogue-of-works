\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/8 \tempoMarkup "Allegro"
  b'8^\partVi b4
  f'8 f4
  b16 a b c d8
  c4.
  g16 f g a b8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
