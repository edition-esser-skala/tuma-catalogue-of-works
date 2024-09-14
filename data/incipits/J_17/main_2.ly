\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 4/4 \tempoMarkup "Fuga · Presto"
  r8^\partVi g'' g g g f16 es f8 g
  es d c2 h4
  c r8 es d es16 f g f es d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
