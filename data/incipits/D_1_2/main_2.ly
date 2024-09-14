\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key a \minor \time 4/4 \autoBeamOff
  r8^\partTs e a, h c h16 a f'8. f16
  e8 e d c h c16[ d] h8. h16
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
