\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  << { g''8^\partClni e16 g f e f d } \\ { e8 c16 e d c d h } >>
    \clef alto g4^\partAs e
  a8. a16 g4 a8 g16 a f4
  e \autoBeamOn \clef treble e'16^\partVi c c'8 \appoggiatura c h4 r
  r16 a b a f d d'8 \appoggiatura d c4 r
}

text = \lyricmode {
  Di -- xit
  Do -- mi -- nus Do -- mi -- no me --
  o,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
