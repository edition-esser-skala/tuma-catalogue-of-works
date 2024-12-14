\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \minor \time 3/4 \tempoMarkup "Largo"
  d'2.^\partVii
  \set Staff.forceClef = ##t e2^\partVi es4
  d2.
  c
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
