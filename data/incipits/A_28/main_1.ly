\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 4/4 \tempoMarkup "Adagio"
  r8^\partVi g''16( fis) d8 h'16( a) d,8 a16( fis) d8 a''16( c,)
  \clef soprano \autoBeamOff h8.^\partSc h16 h8 h c4 c
    r8 c c c16 c c4\trill h
}

text = \lyricmode {
  \skips 7
  Ky -- ri -- e e -- lei -- son,
  e -- lei -- son, e -- lei -- son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
