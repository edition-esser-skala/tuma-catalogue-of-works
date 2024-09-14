\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 4/4 \tempoMarkup "Allegro assai"
  \partial 4 es4^\partVi f es f es
  \tuplet 3/2 4 { d8 es f } es4 r r8 b
  es4. d8 es8.[ f16 g8. a16]
  b2 r4 es,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
