\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key g \minor \time 4/4 \tempoMarkup "Larghetto"
  d4.^\partTrbi d8 g4. g8
  a8. b32 c b8 a b16 a g8 r16 b a g
}

text = \lyricmode {

}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
