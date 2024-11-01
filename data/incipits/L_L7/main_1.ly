\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/4 \tempoMarkup "[no tempo]"
  b'8^\partVi d4 f a8
  b a16 g f g f es
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
