\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 4/4 \tempoMarkup ""
  g'4. g8 g f f4
  f8 es es4 es8 d g f
  es8. d16 c8 es d4~ d16 g es d
  c4 c16 d es f d8. e16 fis4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
