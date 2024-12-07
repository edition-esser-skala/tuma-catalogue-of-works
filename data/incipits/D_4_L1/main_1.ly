\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4 \tempoMarkup "Adagio"
  r4^\partOrg c g'4. g8
  c,4 r a a'8 a,
  fis4 g d'2
  d4. d8 g,2\fermata
}

bassfigures = \figuremode {
  r1
  r
  <6 5>2 <5 _+>4 <6 4>
  <5 4> <_ _+>2.
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new FiguredBass { \bassfigures }
  >>
}
