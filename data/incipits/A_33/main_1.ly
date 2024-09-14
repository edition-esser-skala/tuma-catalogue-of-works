\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro moderato"
  c'4.^\partSc c8 d fis g4
  r8 fis g4~ g8[ dis] e4~
  e8 h c4~ c8 c c[ h]
  c4 r r2
}

text = \lyricmode {
  Ky -- ri -- e e -- lei --
  _ _ _
  _ son, e -- lei --
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
