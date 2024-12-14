\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/4 \tempoMarkup "Allegro"
  \partial 4 f'4^\partVi d8 c b c d es
  f4 f,2
  b'8 d, \grace f4 e2
  f
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
