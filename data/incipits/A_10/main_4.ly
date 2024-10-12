\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Adagio"
  r4^\partSc h' g a h c
  h a g a h c
  h2 h r
}

text = \lyricmode {
  San -- _ _ _ _
  _ _ _ _ _ _
  _ ctus,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
