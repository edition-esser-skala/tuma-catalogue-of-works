\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \dorian \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
  a'4^\partSc a4. a8
  a4. a8 a a
  a4. a8 a a
  a4. a8 a4
}

text = \lyricmode {
  Qui ha -- bi -- 
  tat in ad -- iu -- 
  to -- ri -- o Al -- 
  tis -- si -- mi,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
