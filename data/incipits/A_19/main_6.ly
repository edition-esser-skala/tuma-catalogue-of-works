\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
  e'4^\partSc e d d8 d
  d4 c r c
  c h c c
  e4. e8 e2~
}

text = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec --
  ca -- ta mun -- di:
  Mi -- se -- "re -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
