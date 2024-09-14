\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 4/4 \tempoMarkup "Allegro moderato"
  c'4^\partVi c' r8 c,16 d es8 fis
  g4 b r8 b,16 c des8 e
  f4 as r8 c,16 h r8 b
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
