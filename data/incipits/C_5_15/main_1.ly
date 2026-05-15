\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
  a'1^\partSc
  a2 a
  d1
  cis2 d
  d cis
  d2. d4
}

text = \lyricmode {
  A --
  ni -- mam
  me --
  am di --
  le -- ctam
  tra -- "di -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
