\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 4/4 \tempoMarkup "Allegro"
  \partial 8 d8^\partVii a' a a d, a'4. h16 cis
  d a a4 h16 cis d a a4 h16 cis
  d8 cis16 h a8 g fis16 e fis d g fis g e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
