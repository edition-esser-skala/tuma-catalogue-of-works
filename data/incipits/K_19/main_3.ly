\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \dorian \time 2/4 \tempoMarkup "Andante"
  r8^\partVi a'' cis,( d)
  r b' fis( g)
  r e g,( a)
  f d d'16( cis) cis8-!
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
