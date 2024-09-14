\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 3/2 \tempoMarkup "Largo"
  f2^\partVi c'4 a g f
  e c e f g a
  b c8 d \grace d4 c2. b4
  \tuplet 3/2 2 { a g f } f2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
