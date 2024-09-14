\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 2/2 \autoBeamOff
  d'2 g
  g fis
  a c,
  c h
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
