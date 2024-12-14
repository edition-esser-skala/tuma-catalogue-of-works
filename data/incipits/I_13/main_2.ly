\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \minor \time 4/4 \tempoMarkup "Allegro"
  d'8^\partVi e f4. g8 e4
  c8 d es4. f8 d4
  b8 c d4. e8 cis4
  c8 d h4. c8 a4~
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
