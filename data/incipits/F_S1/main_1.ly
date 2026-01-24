\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  r4^\partSc c'8 c h4 h
  r2 r4 c8 c
  c2 h
  r r4 h8 h
  c4 c
}

text = \lyricmode {
  Sta -- bat
  ma -- ter
  do -- lo --
  ro -- sa,
  do -- lo --
  ro -- sa
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
