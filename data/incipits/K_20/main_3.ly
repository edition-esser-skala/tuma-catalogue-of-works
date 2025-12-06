\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 2/2 \tempoMarkup "Borne"
  \partial 4 f'4^\partVi e8 g c, b a c a f
  e g e c f4 c'
  a8 c a f d' f d a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
