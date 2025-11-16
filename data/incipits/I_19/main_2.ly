\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key a \major \time 3/8 \tempoMarkup "Presto capriccio"
  r8 e^\part "vlc" e
  cis d16 e fis8
  h, e e
  a, a'4~
  a8 gis16 fis gis8~
  gis cis, fis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
