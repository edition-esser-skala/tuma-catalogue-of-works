\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key f \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  r8^\partAs c f4 e8 g a a
  g f16[ e] f8 e16[ d] c4*1/2 \clef treble \autoBeamOn c''8^\partVi a c
  c( b) g, b' b( a) r4
}

text = \lyricmode {
  In -- vi -- ctus, in -- vi -- ctus
  he -- ros nu -- mi -- nis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
