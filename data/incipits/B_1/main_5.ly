\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  c'1^\partSc
  h2~ h4 r
  b1~
  b2 as4 r
}

text = \lyricmode {
  San --
  ctus, __
  san --
  ctus,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
