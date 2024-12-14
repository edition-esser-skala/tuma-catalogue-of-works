\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \lydian \time 3/4 \tempoMarkup "Menuet"
  es'4^\partVi b c
  g4. as8 b4
  es, c'8 b as g
  f4 b,2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
