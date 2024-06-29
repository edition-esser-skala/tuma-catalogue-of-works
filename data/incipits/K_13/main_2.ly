\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 2/2 \tempoMarkup "Allabreve"
  c'1^\partVii
  h1*1/2 \set Staff.forceClef = ##t g'2~^\partVi
  g4 d d e
  f e f2~
  f4 c c d
  es! d es2~
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
