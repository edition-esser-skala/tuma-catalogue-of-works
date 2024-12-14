\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/4 \tempoMarkup "Largo"
  d'2.^\partVi
  c2~ c8 d16 es
  d8 f b a b b,
  b4\trill a r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
