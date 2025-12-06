\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \dorian \time 3/8 \tempoMarkup "[no tempo]"
  c''8^\partVi e,8. d32 e
  f8 c r
  des a8. g32 a
  b8 des r
  c e,4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
