\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4
  c'16^\partVi c' h a g a g f e a g f e f e d
  \clef soprano \autoBeamOff c4.^\partSc c8 d e f4
  e8 r r4 r2
  c4. d8 e d c[ h16 a]
}

text = \lyricmode {
  \skips 16
  Ky -- ri -- e e -- lei --
  son,
  Ky -- ri -- e e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
