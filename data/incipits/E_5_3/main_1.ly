\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key a \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
  e2^\partAc \clef soprano a^\partSc
  cis4. cis8 h4 e~
  e d cis4. cis8
  h4. h8 a4 r
}

text = \lyricmode {
  Sub con --
  fu -- gi -- mus, San --
  cta De -- i
  ge -- ni -- trix,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
