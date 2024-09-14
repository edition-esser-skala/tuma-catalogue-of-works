\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key f \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  r8^\partTs c b16[ a] b[ c] a4 a8 a
  g a16[ b] c8 b a b \grace a g4
  f r r2
}

text = \lyricmode {
  Be -- a -- tus vir in man --
  da -- tis e -- ius vo -- let ni --
  mis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
