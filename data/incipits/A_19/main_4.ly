\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
  c'1^\partSc
  h2 r
  d1
  c2 r
  e2. d4
  e2 e8. e16 e4
}

text = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san -- _
  ctus Do -- mi -- nus,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
