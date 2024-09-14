\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 3/8 \tempoMarkup "Allegretto"
  es'8^\partVi d r
  c b r
  as g f
  es r r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
