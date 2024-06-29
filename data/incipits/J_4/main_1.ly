\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/4 \tempoMarkup "Adagio"
  h'8(^\partVi c) h( c) h( e)
  a,2.
  a8( h) a( h) a( h)
  gis2 r4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
