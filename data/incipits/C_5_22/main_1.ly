\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key g \minor \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
  b'1^\partSc
  a
  g
  b
  a2 g
  g fis
  g b
}

text = \lyricmode {
  Re --
  ces --
  sit
  pa --
  stor _
  no -- _
  ster fons
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
