\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 3/4 \tempoMarkup "Allegro"
  d8.[^\partVi d'16] d,8.[ d16 d8. d16]
  d8. a''16 g8.[ fis16 e8. d16]
  cis8. a16 a,8.[ a16 a8. a16]
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
