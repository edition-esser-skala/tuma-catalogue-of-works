\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 2/2 \tempoMarkup "Allegro moderato"
  g'2^\part "org" a
  h4 e, a h
  c2. d4
  h2. e4
  a,2. d4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
