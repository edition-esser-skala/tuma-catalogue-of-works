\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/4 \tempoMarkup "Menuet"
  d'8^\partVi b f'2
  a,8 b c d es4
  d8 b f'2
  a,8 b c d es4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
