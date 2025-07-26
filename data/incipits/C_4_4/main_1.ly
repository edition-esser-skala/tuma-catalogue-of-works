\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
  h'2.^\partSc h4
  h2 h
  c c
  h e4 e
  d c h a
  g2 fis4 e
}

text = \lyricmode {
  Te splen --
  dor et
  vir -- tus
  Pa -- tris, et
  vir -- _ tus _
  Pa -- _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
