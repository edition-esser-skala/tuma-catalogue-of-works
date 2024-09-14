\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 2/4 \tempoMarkup "Allegro"
  a'8^\partVi f' \grace f e4
  r8 gis, gis a
  r f' \grace f e4
  r8 gis, gis a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
