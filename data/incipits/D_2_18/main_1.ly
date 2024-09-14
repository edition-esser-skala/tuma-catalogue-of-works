\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Vivace"
  d4.^\partBc d8 e4. e8
  f4. f8 e d16[ c] h8 e16 d
  c4 f e2
  a,4 r r2
}

text = \lyricmode {
  Ni -- si Do -- mi --
  nus ae -- di -- fi -- ca -- ve -- rit
  do -- _ _
  mum
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
