\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \minor \time 4/4 \tempoMarkup "Allegro ma non troppo"
  c8^\partOrg c c c c c' c c
  h h c c h h h h
}

bassfigures = \figuremode {
  r1
  <6>4 <8>8 <6> <6>4 <5>
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new FiguredBass { \bassfigures }
  >>
}
