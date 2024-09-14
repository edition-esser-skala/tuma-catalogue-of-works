\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/4 \tempoMarkup "Menuet"
  b'8^\partVi d c b a b
  f'4 f f
  b,8 d c b a b
  b'2.
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
