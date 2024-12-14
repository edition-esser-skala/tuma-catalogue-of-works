\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
  a'4.^\partSc a8 d,4 d'~
  d cis8[ h] cis4 h8[ a]
  h4. e8 a,4 d~
  d cis d a
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- _ _
  son, e -- lei -- _
  _ son, "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
