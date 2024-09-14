\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/2
  e'2^\partVi e,4 h' c h
  h ais h d h a \gotoBar "9"
  \clef soprano \autoBeamOff h2.^\partSc a4 g2
  c h4 a g fis
}

text = \lyricmode {
  \skips 11
  Ky -- ri -- e
  e -- lei -- _ _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
