\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 4/4 \tempoMarkup "Larghetto"
  d'4.^\partVi d8 es es, es'4~
  es8 d16 c d8 g g4 fis
  g c,8 b \gotoBar "6" \clef alto \autoBeamOff d,4.^\partAc d8
  \clef soprano g4.^\partSc g8 b4 b
  a2 g
}

text = \lyricmode {
  \skips 14
  Ky -- ri
  Ky -- ri -- e e --
  "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
