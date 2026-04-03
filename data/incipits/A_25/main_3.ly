\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  g'2^\partAc e4 g
  a4. g8 f[ e] f f
  g4 d \clef soprano c'2^\partSc
  a4 c d d8 c
}

text = \lyricmode {
  Pa -- trem o --
  mni -- po -- ten -- tem, fa --
  cto -- rem Fa --
  cto -- rem coe -- li et
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
