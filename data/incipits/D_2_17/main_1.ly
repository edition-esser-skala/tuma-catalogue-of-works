\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/2 \tempoMarkup "Adagio"
  g''2^\partVi g g
  fis4. e8 fis2 r \gotoBar "11"
  \clef soprano \autoBeamOff h,1 c2
  c4 h h1
  r2 h gis
  a1 a2
}

text = \lyricmode {
  \skips 6
  Mi -- se --
  re -- _ re,
  mi -- se
  re -- re
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
