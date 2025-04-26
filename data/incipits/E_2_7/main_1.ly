\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key g \minor \time 4/4 \autoBeamOff
  g'4^\partAs d8 b' a4 g8 fis
  g16[ fis] g8 r4 r g8 g
  g f16[ es] f8 f f es r4
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
