\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 4/4 \tempoMarkup "Adagio"
  b'4.^\partVii c16 b b4. es16 d
  d4. g16 f f8 b, \grace f' es4
  d8 a'16 b b,8 b b a'16 b b,8 b
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
