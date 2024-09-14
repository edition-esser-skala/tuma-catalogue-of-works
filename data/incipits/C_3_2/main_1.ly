\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Recitativo · Adagio"
  g'8^\partVi a16 g g c c g a8 b16 a a f' f a,
  \clef tenor \autoBeamOff r8^\partTs e c h c4 g8 c
  c4 h d8 g, r g

}

text = \lyricmode {
  \skips 14
  Qui cha -- ri -- ta -- te ac --
  cen -- sus De -- um prae
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
