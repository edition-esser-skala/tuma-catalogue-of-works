\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 3/4 \tempoMarkup "Menuet"
  c'4^\partFl e f
  g a g
  g c a
  \appoggiatura g4 f2 e4
  \tuplet 3/2 { c'8 h a } g4 fis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
