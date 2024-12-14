\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key g \major \time 4/4 \autoBeamOff
  d4.^\partTs d8 g,4 r8 g
  g[ fis] c'16[ e] d[ c] c8 h r4
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e -- lei -- son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
