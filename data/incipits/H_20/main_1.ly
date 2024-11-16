\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key a \minor \time 4/4 \tempoMarkup "Andante"
  a'4^\partOrg a,8 a' g f e d
  c4 r8 f e[ d]
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
