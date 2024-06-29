\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key d \dorian \time 3/2 \autoBeamOff \tempoMarkup "Larghetto"
  a'4(^\partAs b a g f e)
  f( g f e) d( cis)
  \clef soprano a'2^\partSc a r
}

text = \lyricmode {
  San --
  _ ctus,
  san -- ctus
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
