\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
  r8^\partSc c' h8. h16 c4 r8 g
  e4 a8 a h h a8. a16
  a8 d4 f8 h, h h h
}

text = \lyricmode {
  Be -- a -- tus vir qui
  ti -- met, qui ti -- met Do -- mi --
  num: In man -- da -- tis e -- ius
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
