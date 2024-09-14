\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/8 \tempoMarkup "Gagliarda"
  \tuplet 3/2 8 { a''16^\partVi gis fis } e8[ d]
  cis16 h a4
  e16 fis fis gis gis a
  a8 a,8. cis'16
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
