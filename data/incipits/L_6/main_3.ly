\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/4 \tempoMarkup "Menuet"
  \tuplet 3/2 4 { a'8^\partVi h cis } e,2
  \tuplet 3/2 4 { h'8 cis d } e,2
  \tuplet 3/2 4 { cis'8 d e } d[ cis h a]
  gis h e,2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
