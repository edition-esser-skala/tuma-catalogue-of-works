\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \major \time 4/4 \tempoMarkup "[no tempo]"
  d8^\partOrg d fis d a' h cis a
  cis, a cis a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
