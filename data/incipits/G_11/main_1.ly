\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key d \dorian \time 4/4 \tempoMarkup "Andante" \autoBeamOff
  a'4.^\partAs a8 f e16[ d] b'4
  a4. a8 g[ a16 b] a8[ g]
  f f e4 f4. g8
}

text = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, e -- lei -- _
  son, e -- lei -- son, "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
