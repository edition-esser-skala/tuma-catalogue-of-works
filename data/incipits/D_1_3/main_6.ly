\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  c2^\partAc d4 d8 d
  \clef soprano g8.^\partSc g16 g8 g a4 a8 h
  c g c c16 c c8 h d4
}

text = \lyricmode {
  In e -- xi -- tu
  fa -- cta est Ju -- dae -- a san --
  cti -- fi -- ca -- ti -- o e -- ius "Is -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
