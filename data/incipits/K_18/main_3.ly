\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 3/8 \tempoMarkup "Allegro"
  g'4.^\partVi
  d'
  g8 fis e
  d4.
  c8 c h
  e e d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
