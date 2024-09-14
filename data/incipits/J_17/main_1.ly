\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 3/4 \tempoMarkup "Adagio"
  r4^\partVi r c'
  d g, g'~
  g c, f~
  f8 as g f es d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
