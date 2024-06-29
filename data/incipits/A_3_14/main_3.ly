\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  h'4.^\partSc h8 a a16 a g4
  fis8 h g c h16 a g8 g fis
  g h e4 e8 e dis4
}

text = \lyricmode {
  Cre -- do De -- um de De --
  o, lu -- men de lu -- mi -- ne, De -- um
  ve -- rum de De -- o "ve -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
