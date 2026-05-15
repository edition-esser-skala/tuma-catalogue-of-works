\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 4/4 \tempoMarkup "Un poco andante"
  \partial 8 e'8^\partFl a c,16 d e8 f e16 a e c a8 f'
  e16 e d c d d c h c h a8 r e'
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
