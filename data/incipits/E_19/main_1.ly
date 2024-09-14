\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key h \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  h'2.^\partSc h4
  h2 ais
  a4 a c a
  a2 g
}

text = \lyricmode {
  Si -- cut
  o -- vis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
