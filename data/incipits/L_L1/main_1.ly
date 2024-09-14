\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 3/8 \tempoMarkup "[no tempo]"
  \partial 8 d'8^\partVi d d, d'
  d d, d'
  d d, d'
  d d, h''
  a8. h16 a8
  \grace g fis4 \tuplet 3/2 8 { h,16 cis d }
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
