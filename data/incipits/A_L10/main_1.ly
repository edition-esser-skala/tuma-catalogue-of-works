\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \dorian \time 4/4
  g'4. g8 es4 as
  h,2 c8 d es f
  g4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
