\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 4/4
  f'2~ f4 es8 d
  es2\trill d8 b' r16. f32 es16. d32
  g8[ b]
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
