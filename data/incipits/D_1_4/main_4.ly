\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  r8^\partTs e c a h a16 h c8. c16
  h8 e c a r4 d~
  d8 c16[ d] h8. h16 a4 r
}

text = \lyricmode {
  Lau -- da -- te pu -- e -- ri Do -- mi --
  num: Lau -- da -- te no --
  men Do -- mi -- ni.
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
