\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 2/2 \autoBeamOff \tempoMarkup "Allegro"
  e'1^\partSc
  c2 a
  d1
  h2 c
}

text = \lyricmode {
  Iu --
  das mer --
  ca --
  tor
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
