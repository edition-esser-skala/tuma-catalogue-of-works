\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  d'4.^\partSc d8 d2
  cis4. cis8 cis2
  d4. c8 c4 h
  a
}

text = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e
  e -- _ lei -- _
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
