\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
  e'1^\partSc
  c2 a
  d1
  h2 c~
  c h
  c1~
  c
}

text = \lyricmode {
  Ju --
  das mer --
  ca --
  tor pes --
  si --
  mus, __
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
