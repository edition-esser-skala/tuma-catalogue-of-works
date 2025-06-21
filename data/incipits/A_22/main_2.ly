\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 3/4 \autoBeamOff \tempoMarkup "Allegro"
  e'4.^\partSc e8 e4
  e4. e8 e d
  e4 e r
}

text = \lyricmode {
  Glo -- ri -- a
  in ex -- cel -- sis
  De -- o,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
