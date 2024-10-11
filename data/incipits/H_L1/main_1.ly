\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
  a''4.^\partVi a8 h h h4
  a8 a a a a2
  gis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
