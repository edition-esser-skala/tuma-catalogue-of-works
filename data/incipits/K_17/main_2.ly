\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key h \minor \time 3/4 \tempoMarkup "Largo"
  fis'4^\partVi g8( e) ais,( cis)
  d4 h gis'
  cis, e e
  fis h8( fis) dis( fis)
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
