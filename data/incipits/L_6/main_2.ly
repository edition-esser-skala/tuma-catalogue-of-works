\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 6/8 \tempoMarkup "Siziliana"
  \partial 8 e'8^\partVi c8. h16 a8 f'4 f8
  f4 e8 e4 b'8
  cis,4 d8 f8. g16 e8
  d4.~ d4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
