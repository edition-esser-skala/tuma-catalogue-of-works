\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key h \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
  d'2.^\partSc d4
  e2. e4
  d2 d4 h
  h2 ais
  r cis4 cis
  cis1
}

text = \lyricmode {
  Plan -- ge
  qua -- si
  vir -- go plebs
  me -- a,
  u -- lu --
  "la -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
