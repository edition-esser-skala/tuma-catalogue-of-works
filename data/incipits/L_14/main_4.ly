\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 6/8 \tempoMarkup "Allegro"
  \partial 8 f8^\partVi b f f d' c b
  f'4. f4 g16 a
  b8 d, f e c b'
  a4. a4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
