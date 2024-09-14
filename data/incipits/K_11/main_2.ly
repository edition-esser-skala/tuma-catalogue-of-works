\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 2/4 \tempoMarkup "Allegretto"
  r8^\partVii d' d g~
  g16 fis e d r8 g~
  g16 fis e d r8 es
  es16 d c b d c b a
  b a g8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
