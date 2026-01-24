\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4 \tempoMarkup "Moderato"
  c8^\partOrg c' h g c c, f fis
  g e f g c, c e g
  g g h, g
}

bassfigures = \figuremode {
  r4 <6>2 q8 <5>
  r4 <6 5>2.
  <6 4>8 <5 3> <6>4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new FiguredBass { \bassfigures }
  >>
}
