\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key f \major \time 4/4 \autoBeamOff
  r8^\partAs c f4 e8 g a a
  g f16[ e] f8 e16[ d] c4 r
  R1
  r8 a'16[ g] f[ e] d[ c] h[ a] h8 d4
}

text = \lyricmode {
  In -- vie -- tus, in -- vie -- tus
  he -- ros nu -- mi -- nis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
