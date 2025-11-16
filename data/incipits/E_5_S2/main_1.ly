\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key d \dorian \time 4/4 \tempoMarkup "Andante" \autoBeamOff
  r8^\partAs a' a g16 a \grace g8 f8. e16 d8 \clef soprano d'^\partSc
  d8. cis16 cis8 e16 e f8 e d8. d16
  cis4
}

text = \lyricmode {
  Sub tu -- um prae -- si -- di -- um con -- 
  fu -- gi -- mus, San -- cta De -- i Ge -- ni -- 
  trix
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
