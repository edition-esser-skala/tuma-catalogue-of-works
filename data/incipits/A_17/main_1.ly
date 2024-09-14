\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4
  r8 g''^\partVi e g a f d h'
  c c c, c' c16 h h8 h, h' \gotoBar "11"
  \clef soprano \autoBeamOff c,8.^\partSc c16 c8 h c c r4
  r2 r8 g c4~
}

text = \lyricmode {
  \skips 16
  Ky -- ri -- e e -- lei -- son,
  e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
