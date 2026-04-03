\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
  c'4^\partBs g e e
  r g b b
  r8 b a e f4 f
  r f8 a a[ g] g4
}

text = \lyricmode {
  A -- gnus De -- i,
  qui tol -- lis
  pec -- ca -- ta mun -- di:
  Mi -- se -- re -- re,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
