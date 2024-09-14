\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 4/4 \tempoMarkup "Allegro"
  r2^\partVi d'~
  d4 c2 h4
  c r as'4
  h,8 g c2 h4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
