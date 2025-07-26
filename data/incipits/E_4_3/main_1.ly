\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 3/4 \tempoMarkup "Andante"
  es'4^\partVi b8 r r4
  es g,8 r r4
  es' f,8 c' b as \gotoBar "27"
  \clef soprano \autoBeamOff es'4^\partSs b r
  es g, r
  es' f,8[ c'] b[ as]
}

text = \lyricmode {
  \skips 9
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
