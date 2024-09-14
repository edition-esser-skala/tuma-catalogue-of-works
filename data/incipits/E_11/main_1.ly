\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key e \minor \time 2/2 \autoBeamOff \tempoMarkup ""
  e2.^\partBc fis4
  g2 e
  fis2. e4
  dis h cis dis
}

text = \lyricmode {
  Ve -- lum
  tem -- pli
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
