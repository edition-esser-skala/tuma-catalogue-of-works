\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key h \minor \time 3/4 \tempoMarkup "Sarabande"
  d'8.^\partVi e16 \grace d4 cis2\trill
  h r4
  h'8. c16 \grace h4 a2\trill
  g r4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
