\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  r4 d8^\partTs g, fis g16 a c8 h16 a
  h8 g h e16 d cis8 d d[ cis]
  d4 r r2
}

text = \lyricmode {
  Di -- xit Do -- mi -- nus Do -- mi -- no
  me -- o: se -- de a dex -- tris me --
  is
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
