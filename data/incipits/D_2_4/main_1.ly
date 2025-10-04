\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \minor \time 2/2 \autoBeamOff \tempoMarkup "[no tempo]"
  d'2.^\partSc d4
  g,1
  b4 a b g
  a2 d
  g, c~
  c b
}

text = \lyricmode {
  Cre -- di --
  di,
  pro -- pter quod lo --
  cu -- tus
  sum, e -- 
  go
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
