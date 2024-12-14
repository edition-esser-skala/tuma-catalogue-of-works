\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  d'4.^\partSs g,8 g[ fis] c' c
  c4 h r2
  r4 h cis cis
}

text = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis
  pec -- ca -- ta
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
