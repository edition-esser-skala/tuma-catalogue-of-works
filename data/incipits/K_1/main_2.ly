\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 2/4 \tempoMarkup "Andante"
  e'8^\partVi h4 c8
  h e,4 g8
  fis a4 dis,8
  e4 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
