\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 4/4 \tempoMarkup "Allegro ma non presto"
  r8^\partVi d' g4 r8 d g4
  r8 d g4~ g8 a16 e \grace g8 fis4
  g8 h d4 r8 h d4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
