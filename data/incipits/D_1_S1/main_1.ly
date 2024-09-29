\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  c8^\partAs d e d16 e \clef soprano d'8^\partSs d16 d d8 d
  d16[ c] c8 r4 r r8 d
  g, g c h a a r4
}

text = \lyricmode {
  Di -- xit Do -- mi -- nus Se -- de a dex -- tris
  me -- is, vir -- 
  gam vir -- tu -- tis tu -- a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
