\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 4/4 \tempoMarkup "Allegro"
  b'2^\partVi c4 f
  es2 d4 r
  r g2 f4~
  f es2 d4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
