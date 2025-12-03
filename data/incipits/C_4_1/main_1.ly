\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 2/2 \autoBeamOff \tempoMarkup "Andante"
  d'2^\partVi g
  g fis
  a c,
  c h \gotoBar "28"
  \clef soprano d^\partSc d
  c c
  h c4 d
  e1
  d2 d
}

text = \lyricmode {
  \skips 8
  Con -- fi --
  te -- bor
  Do -- mi -- no
  ni --
  mis in
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
