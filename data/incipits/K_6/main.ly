\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \dorian \time 4/4 \tempoMarkup "Lento"
  \partial 8 f8\p^\partVi c' c r16 c\f b16. as32 b8\p b r16 b\f as16. g32
  as8 as(-.\p as-. as-.) \grace as g4\fermata r8 c\pp
  des des f16( des) c( h) c8 c es!16( c) b( a)
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
