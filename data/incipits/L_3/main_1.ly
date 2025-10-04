\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 2/4 \tempoMarkup "Andante con moto"
  \partial 4 h4^\part "org" e4. fis8
  g4. a8
  h c16 h a4~
  a16 c h a g4~
  g8 a16 g fis8 a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
