\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 3/4 \tempoMarkup "Menuet · Allegro"
  e'4^\partVi c a
  a'2 h8\trill a16 h
  c4  d8 c h a
  gis4 e r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
