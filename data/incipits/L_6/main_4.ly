\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/8 \tempoMarkup "Presto"
  a''8.^\partVi h16 a8
  a,4.
  a'8. h16 a8
  a,4.
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
