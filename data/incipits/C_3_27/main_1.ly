\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/8 \tempoMarkup "Andante"
  a'4.^\partVi
  h
  cis16 e d cis h a \gotoBar "31"
  \clef soprano \autoBeamOff a4.^\partSs
  h
  cis16[ e] d[ cis h a]
  fis'8 a,[ gis]
}

text = \lyricmode {
  \skips 8
  Toch --
  ter 
  Si -- on 
  sey "er -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
