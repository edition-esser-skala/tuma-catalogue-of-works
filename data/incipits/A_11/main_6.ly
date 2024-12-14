\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Larghetto"
  e4^\partVii f e f e a
  \set Staff.forceClef = ##t r^\partVi d2 h4 c d
  d,2 r r \gotoBar "7"
  \clef alto r2^\partAs gis gis
  a h gis
}

text = \lyricmode {
  \skips 11
  A -- gnus
  De -- i, qui
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
