\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
  d2.^\partTc d4
  c2 a
  b2. b4
  a2 \clef soprano d'^\partSc
  d cis
  d d
}

text = \lyricmode {
  Se -- ni --
  o -- res
  po -- pu --
  li con --
  si -- li --
  um "fe -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
