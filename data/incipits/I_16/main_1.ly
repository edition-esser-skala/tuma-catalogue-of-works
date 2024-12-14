\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twofourtime \key c \minor \time 2/4 \tempoMarkup "Larghetto overo andante"
  \partial 8 g'8^\partVi c( g) es'( d)
  c4 r8 g
  c b \grace b as4\trill
  g r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
