\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twofourtime \key d \major \time 2/4 \tempoMarkup "Allegro strepitoso"
  d'16^\partVi d, d d d d d d
  d' d, d d d d d d
  a' a, a a a a a a
  \tuplet 3/2 4 { fis'8 e d fis[ e d] }
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
