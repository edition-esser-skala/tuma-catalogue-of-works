\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  c'16[^\partSs g a h] c[ h c d] e[ g, a h] c[ d e f]
  g16. c,32 c8 r4 c8^\partSc c16 c c8 h
  c c r4 e8 e d c
}

text = \lyricmode {
  Glo -- _ _ _
  _ ri -- a, glo -- ri -- a in ex --
  cel -- sis, in ex -- cel -- sis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
