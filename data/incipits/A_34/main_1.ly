\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  b'4.^\partSc b8 b4. b8
  f2 f8 r r4
  r2 b4. b8
  b4. b8 b4 a8[ g]
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- son,
  Ky -- ri --
  e e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
