\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key g \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
  b'2.^\partSc b4
  d2 c4 b
  a2 d
  d4 c c2
  b4 c d2
  b a
}

text = \lyricmode {
  Tra -- di --
  de -- runt _
  me in
  ma -- _ nus,
  ma -- _ nus
  im -- "pi -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
