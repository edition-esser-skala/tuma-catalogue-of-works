\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 2/4 \tempoMarkup "Andante"
  \partial 8 c'8^\partVi f a,4 f8
  c'16( h) c8 r c
  f16( e) f8 r f
  c'16( h) c8 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
