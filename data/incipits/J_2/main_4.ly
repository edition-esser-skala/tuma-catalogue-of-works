\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/8 \tempoMarkup "Presto"
  h'16[^\partVi e] \grace e8 dis8. c16
  h[ a] \grace a8 g8. fis16
  e[ e'] \grace e8 dis8. c16
  h[ a] \grace a8 g8. fis16
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
