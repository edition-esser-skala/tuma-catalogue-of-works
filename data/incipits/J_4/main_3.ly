\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 2/4 \tempoMarkup "Andante"
  \partial 8 e'8^\partVii c16 a gis a c[ a] \set Staff.forceClef = ##t gis'8^\partVi
  a a, r a'
  g! d' r g,
  f c' r f,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
