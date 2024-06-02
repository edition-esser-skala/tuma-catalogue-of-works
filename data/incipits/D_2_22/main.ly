\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  es'4^\partSc c d8[ c] d4
  r g, as4. as8
  g4 c des4. des8
  des[ c] c4 r c~
}

text = \lyricmode {
  Mi -- se -- re -- re,
  mi -- _ se --
  re -- re, mi -- se --
  re -- re, "mi -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
