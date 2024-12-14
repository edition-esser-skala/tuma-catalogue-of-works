\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key f \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro con spirito"
  f8.^\partBc f16 f8 f f16[ e] g4 f8
  a16[ g] b4 a8 g2
  f4 r8 e f4 e
}

text = \lyricmode {
  Ky -- ri -- e e -- lei -- son, e --
  lei -- son, e -- lei --
son, e -- lei -- son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
