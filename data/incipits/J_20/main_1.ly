\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 4/4 \tempoMarkup "Adagio"
  c'8^\partVi f, r4 d'8 f, r4
  c'8 f, r4 b8 e, r4
  a16 b c b a g a b g e c' b a g a b
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
