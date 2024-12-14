\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 4/4 \tempoMarkup "Allegro assai"
  \partial 8 es'8^\partVi b' es, f, d' es es, r f'
  g es g a b b, r b'
  as g a h c c, r c'
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
