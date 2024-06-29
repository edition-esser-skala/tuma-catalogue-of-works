\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
  r4^\partSs a'8 a d2~
  d1~
  d4 cis cis8 cis e a,16 g
}

text = \lyricmode {
  Fir -- ma -- men --

  tum et re -- fu -- gi -- um
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
