\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  a'8.^\partSc a16 a8 g a a a4
  a8 b a8. a16 a8 a a a
  a a a g a a a a
}

text = \lyricmode {
  Ky -- ri -- e e -- lei -- son, Chri --
  ste ex -- au -- di nos, Fi -- li, Re --
  dem -- ptor mun -- di, De -- us, mi -- "se -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
