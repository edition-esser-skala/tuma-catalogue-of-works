\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key a \minor \time 4/4 \autoBeamOff
  e4^\partTs c a8 h16[ c] d8 c
  h16[ a] h8 r g g a16 h c8 b
  a16[ g] a8 a4 a8 h16[ c] d8 c
}

text = \lyricmode {
  Al -- ma
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
