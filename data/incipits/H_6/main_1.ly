\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  c'8.^\partSc c16 d8 d c c c4
  c8 h a a gis gis r4
  r8 e' e16[ d] c[ h] c8 a c4
}

text = \lyricmode {
  Ky -- ri -- e e -- lei -- son, Spi --
  ri -- tus San -- cte De -- us,
  san -- cta Ma -- ri -- a, "o -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
