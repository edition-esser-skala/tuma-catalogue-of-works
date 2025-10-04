\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 3/2 \tempoMarkup "Andante" 
  g''2^\partVi e4 f g2
  g gis4 a fis \hA gis
  a2 a, f'
  b e,4 g f g
  a2 d, d \gotoBar "16"
  \clef soprano \autoBeamOff e2.^\partSc e4 e2
  d d1
  c c2
  b1.
  c2 a1
}

text = \lyricmode {
  \skips 20
  "[Ky" -- ri -- e
  e -- lei --
  "son]"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
