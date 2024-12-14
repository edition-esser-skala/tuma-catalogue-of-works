\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \lydian \time 3/4 \tempoMarkup "Andante"
  r4^\partVi es8 f g as
  b[ g] es b'4 b8 \gotoBar "5"
  \clef bass \autoBeamOff r4^\partBs es,,8[ f] g[ as] b[ g] es4 r
}

text = \lyricmode {
  \skips 9
  Al -- ma,
  al -- ma
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}

