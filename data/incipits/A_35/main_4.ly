\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 4/4 \tempoMarkup "Adagio"
  h'8^\partVi h h h e4 \clef soprano e~^\partSc
  e dis r2
  r4 a2 g4
}

text = \lyricmode {
  \skips 5
  San --
  ctus,
  san -- ctus
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
