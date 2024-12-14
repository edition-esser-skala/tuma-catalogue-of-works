\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 2/2 \tempoMarkup "Tempo moderato"
  \partial 4 es4^\partVi b' b b c8 d
  es4 es, r es
  f8 g as b c4 b8 as
  \grace b as4\trill g r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
