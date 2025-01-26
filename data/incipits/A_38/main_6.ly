\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  r4^\partSc e'2 e4
  f e dis2
  e4 \clef treble \autoBeamOn h'8^\partVi dis, e h4 a8
  g[ e]
}

text = \lyricmode {
  A -- gnus,
  a -- gnus De --
  i,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
