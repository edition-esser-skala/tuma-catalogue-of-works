\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key d \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
  \partial 8 a'8^\partAs fis e16 d e8 d16([ cis)] d8 d e d16([ cis)]
  d8 a'^\partAc g fis16([ e)] fis4 r
}

text = \lyricmode {
  Sub tu -- um prae -- si -- di -- um con -- fu -- gi --
  mus, con -- fu -- gi -- mus,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
