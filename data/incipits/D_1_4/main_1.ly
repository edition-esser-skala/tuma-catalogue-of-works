\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
  r4^\partSc cis'8 cis cis8. cis16 cis4
  cis cis8 h cis cis cis a
  e'2. e8 e
  e e e[ dis] e4 r
}

text = \lyricmode {
  Di -- xit Do -- mi -- nus
  Do -- mi -- no me -- o: Se -- de,
  se -- de a
  dex -- tris me -- is,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
