\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 4/4 \tempoMarkup "Aria · Andante"
  es'4.^\partVi d16 c b es c b \grace b8 as4\trill
  g r8 es' es8. f16 \grace g f8.\trill es32 f
  g8 es16 f g8 b \grace b4 as2\trill
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
