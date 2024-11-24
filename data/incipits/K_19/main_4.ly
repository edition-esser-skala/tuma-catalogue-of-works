\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 3/8 \tempoMarkup "Presto"
  a''8(^\partVi g) a-!
  fis d'4
  a,8( h) cis-!
  d4.
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
