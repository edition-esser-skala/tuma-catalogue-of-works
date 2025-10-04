\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 4/4 \tempoMarkup "Adagio"
  d'16^\partVi b' a g r b a g a d, d d d d d d
  r a' g fis r c' b a b g, g g g g g g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
