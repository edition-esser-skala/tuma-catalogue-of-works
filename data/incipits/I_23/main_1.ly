\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 3/4 \tempoMarkup "Largo"
  g'4^\partVii g g
  c2.
  c8 d c d c d
  h2.
  g2 r4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
