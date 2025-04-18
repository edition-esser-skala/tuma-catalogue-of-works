\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 3/4 \autoBeamOff \tempoMarkup "Andante"
  d'2.~^\partSc
  d4 c a
  b2.
  a4 d2~
  d8[ e] cis2
}

text = \lyricmode {
  San --
  _ _
  _
  ctus, san --
  ctus,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
