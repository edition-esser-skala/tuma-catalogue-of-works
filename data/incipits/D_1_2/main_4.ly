\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key g \major \time 4/4 \autoBeamOff
  d8^\partTs c16[ h] c8. c16 h8 h a d
  h a16 h g4 fis8 a d4
}

text = \lyricmode {
  Ni -- si Do -- mi -- nus ae -- di -- fi --
  ca -- ve -- rit do -- mum, in "va -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
