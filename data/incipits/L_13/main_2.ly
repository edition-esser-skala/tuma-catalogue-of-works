\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/4 \tempoMarkup "Menuet"
  f'4^\partVi es8 d c b
  g'4 \grace g f2
  b4 b, c
  d8 c b2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
