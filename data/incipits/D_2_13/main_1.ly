\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \dorian \time 4/4 \autoBeamOff
  g'4.^\partOrg c8 b4 a
  g4 r g h,
  c r c f \gotoBar "7"
  \clef soprano \autoBeamOff a'4.^\partSc a8 a4 a8 a
  a1
}

text = \lyricmode {
  \skips 10
  Quo -- ni -- am con -- fir --
  "ma -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
