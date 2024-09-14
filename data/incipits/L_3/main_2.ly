\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 2/4 \tempoMarkup "Andante"
  h''8^\partVi h, h dis \grace dis e4 r8 e
  fis8. g32 a g8 fis
  g16 fis e8 r g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
