\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \dorian \time 4/4 \tempoMarkup "Fuga · Allegro"
  d'4.^\partVi d8 cis e a,4
  c4. c8 h d g,4
  b4. b8 a e' f e16 d
  cis4. cis8 d2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
