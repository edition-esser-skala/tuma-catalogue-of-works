\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key es \major \time 3/4 \autoBeamOff \tempoMarkup "Andante"
  es'4.^\partSc b8 b4
  c b as
  g r r
  R2.
  r4 des'2~
  des4 c b
  as r r
}

text = \lyricmode {
  Ky -- ri -- e
  e -- lei -- _
  son,

  e --
  lei -- _
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
