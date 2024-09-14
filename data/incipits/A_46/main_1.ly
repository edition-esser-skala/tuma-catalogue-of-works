\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  a'4.^\partSc a8 g4. g8
  fis4 fis r fis'^\partSs
  e4. d16[ cis] d4 r8 e
  d4. cis16[ h] cis8 cis4^\partSc cis8
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e --
  lei -- _ son, e --
  lei -- _ son, Ky -- "ri -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
