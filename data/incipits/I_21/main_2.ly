\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \minor \time 2/2 \tempoMarkup "Allabreve"
  r4^\partVi f g as
  b c des2~
  des4 c8 b as4 g8 f
  b4 g c c,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
