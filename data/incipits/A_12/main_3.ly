\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  d4^\partBc d8 e f e16[ d] \clef soprano d''4^\partSc
  cis r r e
  d r r f
  e
}

text = \lyricmode {
  Pa -- trem o -- mni -- "po -" Cre --
  do, cre --
  do, cre --
  do,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
