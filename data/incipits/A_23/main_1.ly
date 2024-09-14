\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Grave"
  c'4.^\partSc c8 d2
  r8 d d d c2
  r4 c cis2
  d4. c8 b2. a8
}

text = \lyricmode {
  Ky -- ri -- e
  e -- le -- i -- son,
  e -- lei --
  son, e -- lei -- \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
