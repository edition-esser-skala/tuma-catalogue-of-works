\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 4/4 \tempoMarkup "Andante"
  e4^\partVi h' g8 e r e'
  \kneeBeam \tuplet 3/2 8 { dis16 e fis } h,,8 r d' \kneeBeam \tuplet 3/2 8 { cis16 d e } a,,8 r c' \gotoBar "11"
  \clef bass \autoBeamOff e,,4 ^\partBs h' g8 e r ais
  h h, r gis' a a, r fis'
}

text = \lyricmode {
  \skips 15
  Be -- ne -- di -- ctus, qui
  ve -- nit, qui ve -- nit, qui
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
