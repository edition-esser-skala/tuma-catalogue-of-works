\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 2/2 \tempoMarkup "Gavotta"
  \partial 2 a'4^\partVi cis e a h gis
  a2 fis4 a8 d,
  e4 a8 cis, d4 h
  a2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
