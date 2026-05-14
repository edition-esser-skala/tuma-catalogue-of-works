\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twofourtime \key g \major \time 2/4 \tempoMarkup "Allegro assai"
  g''8^\partVi g, \grace h a4
  h r8 d
  e g \grace g fis4
  g r8 d
  e d \grace d c4
  h r8 a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
