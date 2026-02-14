\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key g \major \time 4/4 \autoBeamOff
  g4^\partOrg r g r8 g
  d'4 r8 fis g4 r8 g
}

text = \lyricmode {
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
