\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
  e'2.^\partSc e4
  e2 r
  e2 e4 d8 d
  d4 d d2
  c c4. c8
  c2. c4
  c h
}

text = \lyricmode {
  "[Ky" -- ri -- "e]"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
