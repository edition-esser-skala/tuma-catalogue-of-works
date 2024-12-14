\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  a'1^\partSc
  b2 b
  d1
  cis2 d
}

text = \lyricmode {
  A --
  ni -- mam
  me --
  am
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
