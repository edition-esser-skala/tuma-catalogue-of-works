\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 4/4 \tempoMarkup "Allegro" 
  a''8^\partVi a,16 h cis8 d e16 cis a8~ a h
  cis4 cis8 d e fis16 gis a8 d,
  cis4 h \clef soprano \autoBeamOff e8^\partSs a,16[ h] cis8 d
  e16[ cis] a4
}

text = \lyricmode {
  \skips 19
  Ky -- ri -- e e -- 
  lei -- son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
