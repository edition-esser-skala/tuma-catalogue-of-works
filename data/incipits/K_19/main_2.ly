\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 4/4 \tempoMarkup "Allegro"
  d'4.^\partVi d8 a'4. a8
  d d, r d' cis fis, r h
  a d, g4 \grace g16 fis8 e16 d e4\trill
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
