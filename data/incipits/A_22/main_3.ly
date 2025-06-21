\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  c2^\partTc c4 c
  a c d2
  c h
  c4 g g g
}

text = \lyricmode {
  Cre -- do in
  u -- num De --
  um, Pa --
  trem o -- mni -- "po -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
