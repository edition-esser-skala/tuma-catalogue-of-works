\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  es'4.^\partSc es8 c4 c
  r2 r8 d4 d8
  cis4 cis r2
}

text = \lyricmode {
  Mi -- se -- re -- re,
  mi -- se --
  re -- re
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
