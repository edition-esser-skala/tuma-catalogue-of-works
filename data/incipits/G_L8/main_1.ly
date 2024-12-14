\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key g \major \time 4/4 \tempoMarkup "Allegro"
  g'4.^\partOrg fis8 e c d4
  g,8 r r4 r2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
