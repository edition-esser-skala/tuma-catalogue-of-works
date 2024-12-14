\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/4 \tempoMarkup "Adagio"
  h'4^\partVi e( dis)
  h g'( fis)
  h8( c) h( a) g( fis)
  g fis e4 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
