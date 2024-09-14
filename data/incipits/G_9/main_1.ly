\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro moderato"
  fis'4^\partSc e r2
  h4 a r2
  h4 a r2
  h8 h h a a8. a16 a8 r
}

text = \lyricmode {
  Ve -- ni,
  ve -- ni,
  ve -- ni,
  ve -- ni Sanc -- te Spu -- ri -- tus
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
