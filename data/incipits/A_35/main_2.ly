\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  r4^\partSc h'8 h h h r4
  a r8 a a8. g16 g4
  e'16[ h c h] e[ h c h] c[ a h a] d![ a] h[ a]
}

text = \lyricmode {
  Et in ter -- ra
  pax ho -- mi -- ni -- bus
  bo -- _ _ _ nae
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
