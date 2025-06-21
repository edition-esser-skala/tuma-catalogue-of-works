\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 4/4 \tempoMarkup "Andante"
  a'4^\partVi h c16 h a8 r4 \gotoBar "12"
  \clef soprano \autoBeamOff a4^\partSs h\trill c16([ h)] a8 r4
  c d\trill e16([ d)] c8 r4
}

text = \lyricmode {
  \skips 5
  Be -- ne --
  di -- ctus,
  be -- ne --
  di -- ctus,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
