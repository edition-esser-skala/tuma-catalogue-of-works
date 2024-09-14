\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 3/4 \autoBeamOff \tempoMarkup "Larghetto"
  h'4^\partSc a a
  h h r
  R2.
  e2 dis4
  e e r
}

text = \lyricmode {
  San -- _ ctus,
  san -- ctus,

  san -- ctus,
  san -- ctus,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
