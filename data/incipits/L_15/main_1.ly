\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 4/4 \tempoMarkup "Ouverture"
  d'4~^\partVi d16 b' a g \grace g8 fis4. g8
  g4. g,,8 g4 r16 f'' es d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
