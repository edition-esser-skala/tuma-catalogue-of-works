\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 3/4 \tempoMarkup "Adagio"
  \partial 16 c'16^\partVi c4 c, r8 g'
  as g c h es d
  g2.~
  g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
