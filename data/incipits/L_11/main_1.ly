\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \minor \time 3/4 \tempoMarkup "Andante"
  d4^\partVi d' r8 r16 d,
  d4 d' r8 r16 d,
  d4 d' r8 r16 d,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
