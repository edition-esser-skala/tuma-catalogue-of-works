\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key h \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  d'2.^\partSc d4
  e2. e4
  d2 d4 h
  h2 ais
}

text = \lyricmode {
  Plan -- ge
  qua -- si
  vir -- go
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
