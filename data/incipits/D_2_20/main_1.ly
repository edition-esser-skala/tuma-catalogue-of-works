\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Vivace"
  d4.^\partBc d8 e4. e8
  f4. f8 e d16[ c] h8 e16 d
  \clef soprano a''4.^\partSc a8 h4. h8
  c c c c b8. c16 d4
}

text = \lyricmode {
  Ni -- si Do -- mi --
  nus ae -- di -- fi -- ca -- ve -- rit
  Ni -- si Do -- mi -- %3
  nus ae -- di -- fi -- ca -- ve -- rit
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
