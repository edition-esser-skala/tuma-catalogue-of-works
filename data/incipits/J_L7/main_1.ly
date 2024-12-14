\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 3/8 \tempoMarkup "[no tempo]"
  c4^\partOrg r8
  c c' c,
  h4 r8
  h h' h,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
