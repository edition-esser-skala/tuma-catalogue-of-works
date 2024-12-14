\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key b \major \time 4/4 \tempoMarkup "[no tempo]"
  b4^\partOrg r8 c d b'4 f8
  b d16 c b8 b,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
