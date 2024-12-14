\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \minor \time 4/4 \tempoMarkup "Presto"
  d'8^\partVi a d a d a r a
  f a e a f d r4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
