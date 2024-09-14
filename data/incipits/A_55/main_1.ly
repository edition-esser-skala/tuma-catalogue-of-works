\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  c'8.^\partSc c16 d8 d e[ d] d4
  e8 r r4 r2
  a,8. a16 h8 h c[ a] h4
  c8
}

text = \lyricmode {
  Ky -- ri -- e e -- lei -- _
  son,
  Ky -- ri -- e e -- lei -- _
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
