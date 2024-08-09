\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key g \minor \time 4/4 \tempoMarkup "Presto"
  g'4.^\partBc g8 \clef tenor d'4.^\partTc d8
  cis4 c c h
  a2 \clef alto g'4.^\partAc g8
  \clef soprano d'4.^\partSc d8 cis4 c
  h e cis d
}

text = \lyricmode {
  Ky -- ri Ky -- ri --
  e e -- lei -- son,
  Chri Ky -- ri
  Chri -- ste, Chri -- _
  ste e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
