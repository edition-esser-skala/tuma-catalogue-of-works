\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/4 \tempoMarkup "Largo"
  h''8^\partVi e, dis4.\trill cis16 dis
  e4 h r
  c8 a \grace a gis4.\trill fis16 gis
  a4 dis, r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
