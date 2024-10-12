\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \dorian \time 4/4 \autoBeamOff \tempoMarkup "Grave"
  c'2^\partSc c
  c8[ des c b] as[ b as g]
  f2 g4 c~
  c c c h
  c2 r
}

text = \lyricmode {
  Sta -- bat
  ma -- _
  _ ter do --
  lo -- ro -- _
  sa
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
