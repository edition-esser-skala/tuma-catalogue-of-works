\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twofourtime \key a \minor \time 2/4 \tempoMarkup "Allegro"
  \partial 8 a''8^\partVi a,( c) h( d)
  c a r e
  a( c) h( d)
  c a r4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
