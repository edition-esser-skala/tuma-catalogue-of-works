\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key b \major \time 2/2 \autoBeamOff \tempoMarkup "Allegro"
  b'2.^\partSc b4
  d2 c4 b
  a2 d
  d4 c c2
}

text = \lyricmode {
  Tra -- di --
  de -- runt _
  me
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
