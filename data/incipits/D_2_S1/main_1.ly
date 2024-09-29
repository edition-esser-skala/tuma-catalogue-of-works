\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Allegro"
  c8^\partVi c' g h c, c' g h
  \clef soprano \autoBeamOff c^\partSc e16[ f] g8 f e8. e16 d4
c8 e16[ f] g8 f e8. e16 d4
}

text = \lyricmode {
  \skips 8
  Di -- xit, di -- xit Do -- mi -- nus,
  Di -- xit, di -- xit Do -- mi -- nus
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
