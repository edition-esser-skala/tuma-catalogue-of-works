\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
  r8^\partSs g' c e a, h16 c d8 c
  h c a d h c16([ d)] \grace c8 h8. h16
  c4
}

text = \lyricmode {
  Lau -- da -- te pu -- e -- ri Do -- mi --
  num, lau -- da -- te no -- men Do -- mi --
  ni,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
