\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  r4^\partSc h' h8. h16 h4
  d d8 d e4 d
  c4. c8 h2
}

text = \lyricmode {
  Ma -- gni -- fi -- cat
  a -- ni -- ma me -- a
  Do -- mi -- num
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
