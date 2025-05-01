\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
  r8^\partSc a' d4 c8 d b8. b16
  a8 a a8. a16 a4 r
  b8 b b b b a c c
}

text = \lyricmode {
  Sub tu -- um prae -- si -- di --
  um con -- fu -- gi -- mus,
  li -- be -- ra nos sem -- per, vir -- go
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
