\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  a'2^\partSc a
  b1
  a2 b4 a
  g a b c
  d d g, b
}

text = \lyricmode {
  Con -- fi --
  te --
  bor ti -- bi,
  Do -- _ _ mi --
  ne, in to -- to
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
