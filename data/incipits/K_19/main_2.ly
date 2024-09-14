\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 3/4 \tempoMarkup "Andante"
  r4^\partVi r8 d' g b
  a d, d4. d8
  g c, c4. c8
  f b, b4. b8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
