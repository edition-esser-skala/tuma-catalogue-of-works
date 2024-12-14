\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 2/4 \tempoMarkup "Andante"
  r8^\partVi a' e'4
  r8 a, e'4
  r8 a, f'4
  r8 d, d'4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
