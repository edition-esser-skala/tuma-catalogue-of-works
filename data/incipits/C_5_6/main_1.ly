\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
  a'2.^\partSc a4
  a2 h
  a h4 h
  a1
  h2 e
  c r
}

text = \lyricmode {
  U -- nus
  ex di --
  sci -- pu -- lis
  me --
  is tra --
  det,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
