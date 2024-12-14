\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 4/4 \tempoMarkup "Larghetto"
  b'4.^\partVii es16 es, c'8 b4 es16 es,
  as8 g4 c8~ c16 a b8~ b16 g as8~
  as16 f g8~ g16 c f, es d b es' d f es as g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
