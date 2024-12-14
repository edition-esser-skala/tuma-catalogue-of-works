\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 4/4 \tempoMarkup "Andante"
  r16 c'^\partVi d e f g a g b g f e b' g f e
  g e d c g' e d c a f c' b a b c g' \gotoBar "4"
  \clef soprano \autoBeamOff r2 c,4.^\partSc c8
  f4. f8 e[ d] e[ f16 es]
}

text = \lyricmode {
  \skips 31
  Ky -- ri --
  e e -- lei -- \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
