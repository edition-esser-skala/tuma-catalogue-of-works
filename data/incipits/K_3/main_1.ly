\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 12/8 \tempoMarkup "Andante"
  d'8.^\partVi e16 d8 h' a cis, d4 a8 d,4 r8
  d'8. e16 d8 h' a cis, d4 a8 d,4 r8
  d'8. e16 d8 a'( g) fis fis4\trill e8 r4 r8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
