\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key g \minor \time 3/2 \autoBeamOff \tempoMarkup "Andante"
  r2^\partAc g' g
  g fis4 e \hA fis2
  g4 fis g2 r
}

text = \lyricmode {
  Be -- ne --
  di -- ctus, _ qui
  ve -- _ nit,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
