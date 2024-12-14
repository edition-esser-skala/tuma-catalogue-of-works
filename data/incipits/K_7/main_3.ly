\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/4 \tempoMarkup "Menuet"
    \once \override Staff.TimeSignature.style = #'single-digit
  e'4^\partVi \grace e d2
  cis4 h a
  h a gis
  a2 fis'4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
