\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
  e'4.^\partSc e8 e4
  d4. d8 d4
  e4. e8 e4
}

text = \lyricmode {
  Glo -- ri -- a,
  glo -- ri -- a,
  glo -- ri -- a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
