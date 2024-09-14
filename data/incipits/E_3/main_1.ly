\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 2/2 \autoBeamOff
  c'1^\partSc
  c
  c
  c2 c
}

text = \lyricmode {
  Ec --
  ce
  vi --
  de -- mus
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
