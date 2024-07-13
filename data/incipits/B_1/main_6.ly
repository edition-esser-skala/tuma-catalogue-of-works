\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key es \major \time 3/4 \autoBeamOff \tempoMarkup "Andante"
  r4^\partBs b' es,
  f es es
  as as8[ g] as[ f]
  g4 es r
}

text = \lyricmode {
  Be -- ne --
  di -- ctus, qui
  ve -- nit, qui
  ve -- nit,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
