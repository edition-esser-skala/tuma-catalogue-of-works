\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \dorian \time 4/4 \tempoMarkup "Adagio"
  c'4.^\partVi c8 des8. des16 c8 b
  as16 g f8 r c' f8. \tuplet 3/2 16 { f32 g as } g8 f
  e16 d c8 r g as16( b) b( c) \grace as8 g8. g16
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
