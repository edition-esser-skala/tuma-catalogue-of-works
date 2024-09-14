\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 3/4 \tempoMarkup "Menuet"
  d'4^\partVi c8 b a g
  es'4 \grace es d2
  g4 \grace g fis2
  b4 \grace b a2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
