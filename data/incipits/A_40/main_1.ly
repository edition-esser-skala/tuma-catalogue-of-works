\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  c'4.^\partSc c8 c2
  e4.^\partSs e8 d4. c16[ h]
  \grace d4 c2 h4 r
  h4.^\partSc h8 h2
}

text = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e e --
  lei -- son,
  Ky -- ri -- e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
