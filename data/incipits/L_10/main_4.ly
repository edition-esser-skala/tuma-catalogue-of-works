\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 2/4 \tempoMarkup "Allegro"
  \partial 8 f8^\partVi a[ c f a]
  c4. f,8
  e16 g f8 r f,
  e16 g f8 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
