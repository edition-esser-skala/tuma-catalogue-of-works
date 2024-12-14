\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twofourtime \key c \major \time 2/4 \tempoMarkup "Allegro"
  c'4^\partVi d
  \grace c8 h4 c
  r8 d a' g16 f
  f4 e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
