\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 2/4 \tempoMarkup "Andante"
  fis'8[^\partVi h, h cis]
  \grace cis d4 r8 fis,
  g16 h a cis h d cis e
  d8 d, r h'
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
