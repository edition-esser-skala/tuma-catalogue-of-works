\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff
  c'8^\partSc c d c16 h c8 h16 a c8 c
  c c16 d h8 c c[ h] c4
}

text = \lyricmode {
  Di -- xit Do -- mi -- nus Do -- mi -- no me -- o:
  se -- de a dex -- tris me -- is
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
