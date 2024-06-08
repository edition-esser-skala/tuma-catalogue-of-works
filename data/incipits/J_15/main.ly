\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 3/4 \tempoMarkup "Largo"
  r4^\partVi d' g~
  g fis f~
  f e a~
  a gis g~
  g fis g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
