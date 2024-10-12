\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Larghetto"
  r2^\partSs h' h
  c h a
  g4 fis e2 h'
  h cis cis
}

text = \lyricmode {
  Be -- ne --
  di -- ctus, qui
  ve -- _ nit in
  no -- mi -- ne
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
