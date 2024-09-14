\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \minor \time 3/4 \tempoMarkup "Largo"
  \partial 4 g'8.^\partVi c16
  c8 h h4 g'
  \grace f8 es4 \grace d8 c4 es
  \grace es d2 h4
  c r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
