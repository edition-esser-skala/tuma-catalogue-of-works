\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \dorian \time 3/4 \tempoMarkup "Sarabande · Largo"
  \partial 4 f4^\partVi \grace f e2 as4
  \grace as g2 c4~
  c8 des c b as g
  as g f4 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
