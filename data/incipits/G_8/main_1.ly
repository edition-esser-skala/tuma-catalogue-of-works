\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 3/2 \tempoMarkup "Andante" \autoBeamOff
  h'2.^\partSs h4 h2
  h h a
  h r r
}

text = \lyricmode {
  Ky -- ri -- e
  e -- lei -- _
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
