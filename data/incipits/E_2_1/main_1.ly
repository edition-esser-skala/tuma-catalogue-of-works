\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key g \minor \time 4/4 \autoBeamOff
  d4^\partTs g,8 es' es[ d16 c] d8 c
  \clef alto g'4^\partAs d8 b' b[ a16 g] a8 g
  f16[ e] d8 r4 d4. g8
}

text = \lyricmode {
  A -- ve Re -- gi -- na coe --
  A -- ve Re -- gi -- na coe --
  lo -- rum
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
