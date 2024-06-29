\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro moderato"
  r4^\partSc d'8 d d,4 d
  f r f r
  f4. f8 e8. e16 e4
}

text = \lyricmode {
  Et in ter -- ra
  pax, pax,
  pax ho -- mi -- ni -- bus
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
