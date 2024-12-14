\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 2/4 \tempoMarkup "Andante"
  \partial 4 e'4^\partVi c16( a) h( gis) a8 f~
  f e r f
  f e r h'
  h16 c a gis a8 dis
  \grace dis e4 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
