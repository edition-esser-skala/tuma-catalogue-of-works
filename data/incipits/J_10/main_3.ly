\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 2/4 \tempoMarkup "Andante"
  \partial 8 g''8^\partVi fis g r es
  \grace es d4. g,8
  \grace g fis4. c'8
  b16 a g8 r b
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
