\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  R1^\partSc
  h'
  e2 e4 e
  dis h r2
}

text = \lyricmode {
  Je --
  ru -- sa -- lem
  sur -- ge
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
