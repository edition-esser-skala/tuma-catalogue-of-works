\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/4 \tempoMarkup "Larghetto"
  r4 e'8^\partVi dis e4
  r e8 dis e4 \gotoBar "7"
  e \clef soprano h^\partSc h
  h2 h4
  h2 a4
}

text = \lyricmode {
  \skips 7
  Pan -- ge,
  lin -- gua,
  glo -- "ri -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
