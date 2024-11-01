\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key g \minor \time 4/4 \tempoMarkup "Adagio"
  g'4^\partOrg g fis f
  e es d2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
