\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 2/4 \tempoMarkup "Allegro"
  \partial 8 g''16^\partVi c, c4. g8
  es c r g''16 d
  d4~ d16 as' g f
  es d c8 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
