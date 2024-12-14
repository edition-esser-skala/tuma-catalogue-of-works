\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  b'2^\partSc b
  h h4 h
  c2 d4 d
  d2 c
}

text = \lyricmode {
  Ec -- ce
  quo -- mo -- do
  mo -- ri -- tur
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
