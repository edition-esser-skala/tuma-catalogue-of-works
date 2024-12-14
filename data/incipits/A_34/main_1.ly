\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \minor \time 4/4 \tempoMarkup "Adagio"
  r8 a'^\partVi g f r b a g
  \clef soprano \autoBeamOff a4. a8 g4 r
  r8 g g4 f r
  a4. a8 b4 r
}

text = \lyricmode {
  \skips 6
  Ky -- ri -- e
  e -- lei -- son,
  Ky -- ri -- e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
