\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 4/4 \tempoMarkup "[no tempo]"
  g''4.^\partVi g8 g16. d32 g16. a32 g16. d32 g16. a32
  h4 g g2
  a r4 a~
  a fis g2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
