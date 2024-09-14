\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  c'4.^\partSc c8 c4 r
  r g a2
  g4. g8 c2
  h4 r r2
}

text = \lyricmode {
  Ky -- ri -- e
  e -- lei --
  son, e -- lei --
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
