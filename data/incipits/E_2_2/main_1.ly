\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Allegretto"
  b4~^\partTs b32[ f g a b c d c] c4~ c32[ f, a b c d es c]
  d8 c16 b f'8 es16 d c8 f, r4
}

text = \lyricmode {
  A -- _
  _ ve Re -- gi -- na coe -- lo -- rum
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
