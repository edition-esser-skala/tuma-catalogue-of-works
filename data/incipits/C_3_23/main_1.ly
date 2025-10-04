\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Recitativo"
  r4^\partSs g' c c8 d
  e4 e r8 c c g
  b4. b8 a4 h8 c
  c16 g g8
}

text = \lyricmode {
  In cor -- de Ger --
  tru -- dis in -- ve -- ni --
  e -- tis me, di -- cit
  Do -- mi -- nus:
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
