\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Andante"
  g''4.^\part "clno 1" g8 c,4. c8
  d16 c d e d e f g \gotoBar "4" \clef alto \autoBeamOff g,4.^\partAs g8
  c,4. c8 d16[ c d e] d[ e f g]
}

text = \lyricmode {
  \skips 12
  Ky -- ri --
  e e -- lei -- \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
