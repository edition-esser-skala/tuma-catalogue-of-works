\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 3/4 \tempoMarkup "Larghetto"
  a'4-\markup \remark "affettoso"^\partVi d8( fis) e( g)
  fis d' cis( h) a( g)
  fis4 fis8 a g h
  a[ h a( g)] \gotoBar "23" \clef soprano cis,4^\partSc
  d8[ cis] d4 r
}

text = \lyricmode {
  \repeat unfold 15 { \skip 8 }
  Ad --
  e -- ste,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
