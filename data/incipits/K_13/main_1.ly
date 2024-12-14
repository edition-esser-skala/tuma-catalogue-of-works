\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 4/4 \tempoMarkup "Intrada"
  r4^\partVi r8 f' b4 b,
  c16 b c8 r c a'4 a,
  b16 a b8 r b g'4 g,
  a16 g a8 b es d4 c
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
