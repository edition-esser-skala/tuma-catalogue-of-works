\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
  c'4.^\partSc c8 d d d4
  c8 c c c c4 f
  h,2 r4 h8 h
}

text = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, Chri -- ste e -- lei -- _
  son, Chri -- ste
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
