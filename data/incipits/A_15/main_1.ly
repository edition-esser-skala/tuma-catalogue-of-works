\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  b'4.^\partSc b8 c2
  r8 a es'[ d16 c] h8 h h4
  c8 g es'[ d] cis cis cis4
  d4 b b2
}

text = \lyricmode {
  Ky -- ri -- e
  e -- lei -- son, e -- lei --
  son, e -- lei -- son, e -- lei --
  son, e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
