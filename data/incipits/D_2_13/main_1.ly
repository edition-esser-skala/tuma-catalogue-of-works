\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Vivace"
  r4^\partSs r8 d' h16[ c h c] d[ e d e]
  g,[ a g a] h[ c h c] d[ e d e] c[ h] c[ d]
  h4 r r2
}

text = \lyricmode {
  Lae -- ta -- _
  _ _ _ _ tus
  sum
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
