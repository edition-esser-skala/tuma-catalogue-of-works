\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \dorian \time 4/4 \tempoMarkup "Fuga · Presto"
  d'2^\partVi d,4. e16 f
  g8 a b4 c2
  c,4. d16 e f8 g a4
  b e,8 g a4 f8 d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
