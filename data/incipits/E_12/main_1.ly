\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  h'1^\partSc h2 h
  e1 e2 d
}

text = \lyricmode {
   Vi --
   ne -- a
   me --
   a "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
