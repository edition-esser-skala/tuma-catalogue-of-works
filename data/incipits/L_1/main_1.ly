\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 3/4 \tempoMarkup "Allegretto"
  << {
    e'2^\partVi r4
    f2 r4
    f2 r4
    e2 r4
  } \\ {
    r8_\partVii c c c a c
    r c c c f, c'
    r h h h g h
    r h h h e, h'
  } >>
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
