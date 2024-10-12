\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  r2^\partSc r8 c' c c
  c4 c r h8 h
  a4 h8 h g4 g8 h
  c h16 h h8[ c] h4 r
}

text = \lyricmode {
  Cum in -- vo --
  ca -- rem ex -- au --
  di -- sti me De -- us iu --
  sti -- ti -- ae me -- ae
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
