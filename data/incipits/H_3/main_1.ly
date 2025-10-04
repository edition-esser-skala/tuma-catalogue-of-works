\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
  r4 c'^\partSc d c8 c
  c4 h8 h c c e[^\partSs f16 e]
  d[ c d e] d[ f e d] c[ h c d] c[ e d c]
}

text = \lyricmode {
  Te De -- um, te
  De -- um lau -- da -- mus, lau --
  da -- _ _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
