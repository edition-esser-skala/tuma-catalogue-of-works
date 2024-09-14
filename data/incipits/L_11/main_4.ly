\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \minor \time 3/4 \tempoMarkup "Menuet"
  d'8^\partVi b' b a a gis
  a e e f f d
  es d d cis cis d
  d4 d, r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
