\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/8 \tempoMarkup "Capricio"
  b''8^\partVi f a
  b f a
  b f a
  b a16 g f es
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
