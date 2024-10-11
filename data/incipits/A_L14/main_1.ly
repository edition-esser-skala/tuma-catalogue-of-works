\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \minor \time 4/4 \tempoMarkup "Andante" \autoBeamOff
  r8^\partBc d4 e8 f f4 g8
  a[ f e a]
}

text = \lyricmode {
  Ky -- ri -- e e -- _
  "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
