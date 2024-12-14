\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 4/4 \tempoMarkup "Allegro"
  e'4^\partVii e, c'2
  ais h4 d
  gis,2 a4 c
  dis, e c'8( h) h( a)
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
