\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 4/4 \autoBeamOff \tempoMarkup "Grave"
  c'4.^\partSc c8 cis2
  r r8 cis cis cis
  d d4 d8 es2
  r r8 es es es
}

text = \lyricmode {
  Ky -- ri -- e
  e -- le -- i --
  son, Ky -- ri -- e
  e -- le -- "i -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
