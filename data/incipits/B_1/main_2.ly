\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  c'4.^\partSc c8 h4 b
  a4. h8 c[ g] c4~
  c h c r
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- _ _ _
  _ son.
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
