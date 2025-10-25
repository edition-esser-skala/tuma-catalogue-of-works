\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  r4^\partTs c8 c d4 d8 d
  c4 c8 c c4 h8([ a)]
  h4 h r e8 cis
  ais2 h4 d8 h
}

text = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta
  mun -- di: Mi -- se --
  re -- re, mi -- "se -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
