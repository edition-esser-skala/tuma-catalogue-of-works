\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 2/2 \tempoMarkup "Bourree"
  \partial 4 b''4^\partVi d,8 c b4 f es'
  \grace es d2 r8 f, g f
  g2. es'4
  d2~ d8 f, g f
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
