\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff
  c'4^\partSc h c8. c16 c4
  c8 c16 c c8[ h] c4 r
  r8 d c h e e d4
  d r r d8 d
}

text = \lyricmode {
  Di -- xit Do -- mi -- nus
  Do -- mi -- no me -- o:
  Se -- de a dex -- tris me --
  is, do -- nec
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
