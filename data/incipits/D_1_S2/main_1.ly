\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  r2 a'8^\partSc cis h e
  cis8. cis16 h4 cis8 cis16 cis h8 e16 e
  cis4 h e8 d cis h16 cis
}

text = \lyricmode {
  Di -- xit, di -- xit 
  Do -- mi -- nus Do -- mi -- no, Do -- mi -- no
  me -- o: se -- de, se -- de a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
