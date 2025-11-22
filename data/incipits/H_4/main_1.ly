\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key f \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
  \after 4*0 ^\partAs R1*13
  f4. c'8 a4. c8
  a4. g16[ f] e4 r
}

text = \lyricmode {
  So ver -- än -- dert 
  sich das Glückh
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
