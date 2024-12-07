\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \dorian \time 4/4 \autoBeamOff
  g'4.^\partOrg c8 b4 a
  g4 r g h,
  c r c f
  b, r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
