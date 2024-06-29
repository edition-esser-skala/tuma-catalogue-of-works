\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 4/4 \tempoMarkup "Andante"
  r8^\partVi f'\f a,16( c) f,-! es'-! \clef soprano \autoBeamOff b4^\partSc c
  d8[ c] b4 c r
  c d es8[ d] c4
}

text = \lyricmode {
  \repeat unfold 4 { \skip 8 }
  Be -- ne --
  di -- _ ctus,
  be -- ne -- di -- ctus,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
