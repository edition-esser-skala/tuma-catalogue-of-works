\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 4/4 \tempoMarkup "Allegro"
  b'4.^\partVi b'8 b,4. b'8
  b,4~ b16 c d b f'8 f f,4
  f'~ f16 g a f b8 b b,4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
