\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  r8^\partTs e c a d c16 d h8. h16
  c8 g c8. c16 h8 a16[ h] gis8. gis16
  a4 r r2
}

text = \lyricmode {
  Lau -- da -- te pu -- e -- ri Do -- mi --
  num, lau -- da -- te no -- men Do -- mi --
  ni
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
