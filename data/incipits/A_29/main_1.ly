\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Adagio"
  r16 g''^\partVi e c a'4 r16 h c d \grace a8 gis4
  r16 a h c \grace g8 fis4 \clef soprano \autoBeamOff h,4.^\partSc h8
  h4 r8 h h2
  c r8 c c2
}

text = \lyricmode {
  \skips 12
  Ky -- ri --
  e e -- lei --
  son, e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
