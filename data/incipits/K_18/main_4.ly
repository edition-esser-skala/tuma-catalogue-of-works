\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 3/4 \tempoMarkup "Menuet"
  b'4^\partVi \grace b as2
  b,4 as' g
  b \grace b as2
  f'4 as, g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
