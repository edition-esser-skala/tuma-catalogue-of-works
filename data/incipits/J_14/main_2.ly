\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twofourtime \key f \major \time 2/4 \tempoMarkup "Andante"
  \partial 8 c'8^\partVi \tuplet 3/2 8 { a16[ g f] } f-! f-! f( g) f( e)
  \grace e8 f4 r16 c' f c
  \grace c8 b4 r16 b g' b,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
