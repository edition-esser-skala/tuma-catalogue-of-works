\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 4/4 \tempoMarkup "Adagio"
  r4^\partVi es'2~ es8. f16
  g4 g r8 es d c16 h
  c4 g'8 c, des2
  des4 c8 g' g4 f
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
