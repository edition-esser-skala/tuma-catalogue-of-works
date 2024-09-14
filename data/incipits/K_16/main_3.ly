\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 3/4 \tempoMarkup "Menuet"
  d8^\partVi fis a d fis a
  e cis \grace h4 a2
  cis,8 e a cis e g
  fis d d,2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
