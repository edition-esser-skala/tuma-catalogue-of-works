\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 2/4 \tempoMarkup "[no tempo]"
  \partial 8 a'8^\partVii d( cis) r a
  fis'( e) r d
  \grace c?16 h8 a16 h g8 a
  fis d fis' gis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
