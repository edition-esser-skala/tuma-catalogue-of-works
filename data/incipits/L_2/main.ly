\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 3/4 \tempoMarkup "Andante"
  r4^\partVi r r8 c''\p
  c( h) h4 r8 h
  h( a) a4 r8 a
  gis( a) e( f) c( d)
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
