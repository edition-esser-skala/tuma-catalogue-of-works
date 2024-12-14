\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 2/4 \tempoMarkup "Allegro"
  r8^\partVi c' c'4~
  c8 c, c'4~
  c8 c, c'4~
  c8 h16 as g8 f
  es16 d c8 r4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
