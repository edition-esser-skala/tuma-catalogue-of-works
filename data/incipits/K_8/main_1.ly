\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/4 \tempoMarkup "Largo"
  \partial 16 a'16^\partVi a4 e r8 r16 cis'
  cis4 a r8 r16 e'
  e4 cis r8 r16 a'
  \grace a4 gis2 r8 r16 a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
