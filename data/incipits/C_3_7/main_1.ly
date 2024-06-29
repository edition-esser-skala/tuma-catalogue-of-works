\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  r4^\partSc h'2 h8 e
  c4. h8 ais4 ais
  r h2 h8 d!
  h4. a!8 gis4 gis
}

text = \lyricmode {
  O! o! quam
  sua -- vis, sua -- vis,
  o! o! quam
  sua -- vis, sua -- vis,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
