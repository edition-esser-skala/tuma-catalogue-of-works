\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 2/4 \tempoMarkup "Allegretto"
  \partial 4 r8^\partVi d'16 b' \tuplet 3/2 4 { a8 g fis } r g
  \tuplet 3/2 4 { es d c } r c16 f
  \tuplet 3/2 4 { d8 c b } r es
  \tuplet 3/2 4 { c8 b a } r a16 d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
