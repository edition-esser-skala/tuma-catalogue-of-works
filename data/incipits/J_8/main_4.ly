\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 2/4 \tempoMarkup "Allegretto"
  \partial 8 f8^\partVi g f b d
  \grace es16 d8\trill c r f,
  g f c' es
  \grace f16 es8 d r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
