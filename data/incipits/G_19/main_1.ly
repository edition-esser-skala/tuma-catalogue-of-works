\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  c'8.^\partSc c16 c8 c d16[ c h a] g[ f' e d]
  e[ d c d] e[ d e fis] g8 g16[ \hA fis] e8 h
  c[ a d d,] g g' g[ f]
}

text = \lyricmode {
  Ky -- ri -- e e -- lei -- _
  _ _ son, Chri -- ste e -- 
  lei -- son, e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
