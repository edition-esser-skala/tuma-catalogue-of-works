\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key g \minor \time 2/2 \autoBeamOff \tempoMarkup "Adagio"
  d'2^\partSc es
  es d4 r
  h2. h4
  c2 c
  r c
  as g
}

text = \lyricmode {
  Mi -- se --
  re -- re
  me -- i
  De -- us
  se --
  cun -- dum
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
