\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  g'4^\partSc g a a8 a
  g[ a] h h h4 a8 a
  h fis r4 dis'8[ e] cis[ dis]
}

text = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- _ ta
  mun -- di: Mi -- "se -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
