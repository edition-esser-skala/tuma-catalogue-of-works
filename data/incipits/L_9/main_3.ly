\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/4 \tempoMarkup "[no tempo]"
    \once \override Staff.TimeSignature.style = #'single-digit
  e'4^\partVi cis a
  \grace a gis2 a4
  h8 cis d4 d
  e, d' cis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
