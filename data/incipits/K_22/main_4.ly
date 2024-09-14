\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 2/4 \tempoMarkup "Allegro"
  c''4^\partVi f,
  \grace f8 e4 f
  r16 f, g a b c d e
  f g a8 r c,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
