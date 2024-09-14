\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Grave"
  r4^\partSc a' a4. a8
  a2 r
  r8 a4 a16 a a4 gis \noBreak
  a4. a8 gis2
}

text = \lyricmode {
  Ma -- gni -- fi --
  cat
  a -- ni -- ma me -- a
  Do -- mi -- num,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
