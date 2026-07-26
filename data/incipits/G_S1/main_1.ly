\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 3/4 \tempoMarkup "Andante"
  d'16^\partVii d, fis a d cis d cis d8 d
  \fC a'16^\partVi a, cis e a gis a \hA gis a8 a \gotoBar "9"
  \clef soprano \autoBeamOff d,4.^\partSs d8 d d
  \grace d cis4 cis2
}

text = \lyricmode {
  \skips 20
  Ky -- ri -- e e --
  lei -- son
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
