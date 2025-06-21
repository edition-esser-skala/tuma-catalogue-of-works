\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \dorian \time 4/2 \autoBeamOff \tempoMarkup "[no tempo]"
    \set Staff.timeSignatureFraction = 2/2
  a'2.^\partSc d4 b2 b
  a d d cis
  d4 d a h! c!2. c4
}

text = \lyricmode {
  Con -- fi -- te -- bor
  ti -- bi Do -- mi --
  ne in to -- to cor -- de
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
