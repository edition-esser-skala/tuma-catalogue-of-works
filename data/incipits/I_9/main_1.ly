\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/4 \tempoMarkup "Largo"
  e'2.^\partVi
  e
  d
  d
  cis
  cis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
