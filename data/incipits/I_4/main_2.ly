\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \time 4/4 \tempoMarkup "Allegro mà non presto"
  e2^\partVi c'
  a h
  g a
  fis4 g fis2\trill
  e8 g fis e d! fis d cis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
