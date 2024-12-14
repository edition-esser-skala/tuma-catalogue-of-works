\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  c'4^\partSc h c8 c \grace e d4
  e e d4. c16[ h]
  c8 a d4 c4. h16[ a]
  h8 g d'4. c16[ h] c4
}

text = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, e -- lei -- _
  son, e -- lei -- _ _
  son, e -- lei -- _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
