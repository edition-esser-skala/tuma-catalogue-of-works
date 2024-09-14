\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  d'2.^\partSc c4
  b2 a
  g f4 g
  e2. e4
}

text = \lyricmode {
  E -- ram
  qua -- si
  A -- gnus _
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
