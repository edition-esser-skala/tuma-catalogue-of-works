\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  r8^\partSs e' c16[ d] c[ d] e4. e8
  c4 c4. c8 h4
  c r r8 c^\partSc c c
}

text = \lyricmode {
  Lau -- da -- te Do -- mi -- 
  num o -- mnes gen -- 
  tes mi -- se -- "ri -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
