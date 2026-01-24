\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 3/2 \tempoMarkup "Andante" \autoBeamOff
  h'2.^\partSs h4 h2
  h h a
  h \clef bass h,,^\partBs e
  a, h1
  e2
}

text = \lyricmode {
  Ky -- ri -- e
  e -- lei -- _
  son, Chri -- ste
  e -- lei --
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
