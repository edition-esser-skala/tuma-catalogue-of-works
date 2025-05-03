\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key fis \minor \time 3/2 \tempoMarkup "Largo"
  cis'2^\partVii a'4( gis) fis2~
  fis e d
  \set Staff.forceClef = ##t e2^\partVi cis'4( h) a2~
  a gis fis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
