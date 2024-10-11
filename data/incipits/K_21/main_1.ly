\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 4/4 \tempoMarkup "Allamande"
  \partial 4 r16^\partVi a'' gis a a,4~ a16 a' gis a a,4~ a16 a' gis a
  fis d h a gis fis' e d d8 cis r16 a' gis a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
