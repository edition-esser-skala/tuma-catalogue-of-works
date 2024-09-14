\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \dorian \time 4/4 \autoBeamOff
  d'4^\partSc a8 f' e4 d8 cis
  d a r4 r a8 a
  b b16 b c!8 c a a a16[ b] a[ b]
}

text = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
