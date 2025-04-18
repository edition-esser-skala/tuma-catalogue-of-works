\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  a'4^\partSc f' cis d
  r a b h
  h8[ a] a4 e' f
  cis d e d
}

text = \lyricmode {
  A -- gnus De -- i,
  pec -- ca -- ta
  mun -- di: Mi -- se --
  re -- re, mi -- "se -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
