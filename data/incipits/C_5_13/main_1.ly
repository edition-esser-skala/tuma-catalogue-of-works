\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  cis'2.^\partSc cis4
  d2 c4 b
  a2 d~
  d cis
}

text = \lyricmode {
  Tam -- quam
  ad la -- _
  tro -- _
  \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
