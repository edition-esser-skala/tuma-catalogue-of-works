\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef bass
  \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  a4.^\partBc a8 b4. cis,8
  d[ e] f e16[ d] e4 \clef alto g'^\partAc
  g8[ f] e d e a, a'4
  \clef soprano \mvTr d4.^\partSc d8 f4. gis,8
  a[ h] c h16[ a] \grace c4 h2\trill %5
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e -- "lei -" e --
  lei -- son, e -- lei -- son, "e -"
  Ky -- ri -- e e --
  lei -- son, e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
