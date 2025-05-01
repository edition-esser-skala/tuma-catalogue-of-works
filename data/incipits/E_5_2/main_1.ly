\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
  \hideNotes d1
  d
  d
}

text = \lyricmode {
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
