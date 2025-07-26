\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \minor \time 2/4 \tempoMarkup "Vivace"
  \partial 8 c'8^\part "vl" f f4 f8~
  f e16 f g f e des!
  c8 des4 c16 b
  as8 c4 b16 as %230
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
