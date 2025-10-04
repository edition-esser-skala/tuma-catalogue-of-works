\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 4/4 \tempoMarkup "Allegro"
  d'4~^\partVi d16 e fis g g,4. g'8
  g,4~ g16 g' fis g g,4~ g16 g' a h
  a d, d d c h h a \tuplet 3/2 8 { h a g } g'8 \tuplet 3/2 8 { h,16 a g } g'8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
