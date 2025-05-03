\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key g \minor \time 4/4 \tempoMarkup "Larghetto"
  d4.^\partVla d8 g4. g8
  a8. b32 c b8 a b16 a g8 r16 b a g \gotoBar "12"
  \clef tenor \autoBeamOff g,4.^\partTs g8 g4 g
  as4. h8 c[ d] es4
}

text = \lyricmode {
  \skips 15
  Sta -- bat ma -- ter
  do -- lo -- ro \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
