\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \dorian \time 2/2 \autoBeamOff \tempoMarkup "Allabreve"
  a'2.^\partSc d4
  b2 b
  a d
  d cis
  d4 d a h
  c!2. c4
}

text = \lyricmode {
  Con -- fi --
  te -- bor
  ti -- bi
  Do -- mi --
  ne in to -- to
  cor -- de
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
