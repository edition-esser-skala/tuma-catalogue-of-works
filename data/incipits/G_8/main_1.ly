\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \minor \time 4/4 \autoBeamOff \tempoMarkup "Grave"
  r2 as'~^\partSc
  as as4 r
  r2 c~
  c c4 r
  b4. b8 as4 des8[ c]
}

text = \lyricmode {
  Sta --
  bat,
  sta --
  bat
  ma -- ter do -- "lo -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
