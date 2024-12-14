\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 4/4 \tempoMarkup "Adagio"
  e'1~^\partVi
  e4 dis d cis~
  cis h2 a4
  g2 fis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
