\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 4/4 \tempoMarkup "Andante"
  \partial 8 es'8^\partVi f16 es es8 r es f16 es es8 r b'
  c16 b b8 as16 g as b g f es8 c'4~
  c4. h8\trill c es,16 c as'4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
