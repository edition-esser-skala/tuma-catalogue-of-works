\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 3/4 \tempoMarkup "Largo"
  f4^\partVi f f
  b2.~
  b4 c8 b c g
  a2.
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
