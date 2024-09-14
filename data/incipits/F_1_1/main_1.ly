\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  e'4^\partSs a, gis16[ a] h[ c] d8 c16[ h]
  c[ h] a8 r4 r r8 dis
  e h e16[ d] c[ h] c8.[ h32 a] h4
  a
}

text = \lyricmode {
  Al -- ma Re -- dem -- pto -- ris
  ma -- ter et
  stel -- la, stel -- la ma -- _
  ris
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
