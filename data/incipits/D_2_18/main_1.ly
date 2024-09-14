\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \minor \time 2/2 \autoBeamOff \tempoMarkup "Adagio"
  d'2 es
  es d4 r
  h2. h4
  c2 c
}

text = \lyricmode {
  Mi -- se --
  re -- re,
  mi -- se --
  re -- re
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
