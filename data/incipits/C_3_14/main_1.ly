\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key f \major \time 4/4 \autoBeamOff
  r4^\partBs a'8 a g8. g16 g4
  r r8 g g g f e
  f4 f r8 f f a
}

text = \lyricmode {
  Vo -- lun -- ta -- ri -- e
  sa -- cri -- fi -- ca -- bo
  ti -- bi et con -- "fi -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
