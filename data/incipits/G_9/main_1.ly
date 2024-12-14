\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Andante"
  e'8^\partVi h4 g'8 fis h,4 a'8
  g h,4 h'8 c a4 gis8 \gotoBar "8"
  \clef alto \autoBeamOff e,8.^\partAs h16 h8 g' fis h,4 a'8
  g h,4 h'8 c16[ h] a4 gis8
}

text = \lyricmode {
  \skips 12
  Ky -- ri -- e e -- lei -- son, e --
  lei -- son, e -- lei -- _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
