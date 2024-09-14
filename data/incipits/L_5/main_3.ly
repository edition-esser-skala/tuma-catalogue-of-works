\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 3/4 \tempoMarkup "Menuet"
  d'4^\partVi a'2
  \tuplet 3/2 4 { g8 a h } a4 cis,
  d a2
  \tuplet 3/2 4 { g8 a h } a4 g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
