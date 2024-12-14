\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \dorian \time 3/4 \tempoMarkup "Larghetto"
  d'2.^\partVii
  \set Staff.forceClef = ##t e2.~^\partVi
  e4 d8 c b a
  g4 g'2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
