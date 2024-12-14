\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
  h'1^\partSc
  c
  h2 e
  e dis
  e e
}

text = \lyricmode {
  Sub
  tu --
  um prae --
  si -- di --
  um "con -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
