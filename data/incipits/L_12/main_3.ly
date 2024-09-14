\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/4 \tempoMarkup "Largo"
  b'4^\partVi as r8 r16 f'
  as,4 g r
  b' es, r8 r16 c'
  es,4 d r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
