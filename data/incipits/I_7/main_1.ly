\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 4/4 \tempoMarkup "Adagio"
  r8^\partVi fis' e cis r fis e cis
  r fis e4 dis8 e4 d8~
  d16 h cis a h cis d e cis8 d4 c8~
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
