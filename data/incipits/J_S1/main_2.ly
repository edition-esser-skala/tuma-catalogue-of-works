\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/4 \tempoMarkup "Andante"
  b''8.^\partVi a32 g f4 f
  f4. g8 f4
  b,,16[ a8. c16 b8. d16 c8.]
  es8 g16 es \grace es4 d2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
