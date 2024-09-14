\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  d'8.^\partSc d16 c8 d es[ c] d d
  es[ c] d4 e e
}

text = \lyricmode {
  Ky -- ri -- e e -- lei -- son, e --
  lei -- son, Chri -- ste
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
