\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 3/4 \tempoMarkup "Andante"
  es'4^\partVi b8 r r4 \gotoBar "27"
  \clef soprano \autoBeamOff es4 b r
  es g, r
  es' f,8[ c'] b[ as]
}

text = \lyricmode {
  \skips 2
  Sal -- ve,
  sal -- ve,
  sal -- ve "Re -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
