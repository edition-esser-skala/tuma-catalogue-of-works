\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  c'4.^\partSc c8 c4 r
  r2 a4. g16[ f]
  g4. f16[ e] a8 a a[ ais]
}

text = \lyricmode {
  Ky -- ri -- e
  e -- _
  lei -- _ son, e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
