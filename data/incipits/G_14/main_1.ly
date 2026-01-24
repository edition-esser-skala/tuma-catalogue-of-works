\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 3/2 \tempoMarkup "[no tempo]" 
  g''2^\partVi e4 f g2
  g gis4 a fis \hA gis \gotoBar "16"
  \clef soprano \autoBeamOff e2.^\partSs e4 e2
  d d1
  c c2
}

text = \lyricmode {
  \skips 9
  Ky -- ri -- e
  e -- lei --
  son, "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
