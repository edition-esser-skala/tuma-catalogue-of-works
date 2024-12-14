\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 2/4 \tempoMarkup "Allegro"
  r8^\partVi a''[ fis d]
  cis e a,4
  r8 \tuplet 3/2 8 { cis16 d e } a,4
  r8 \tuplet 3/2 8 { cis16 d e } g,8 a
  fis d r4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
