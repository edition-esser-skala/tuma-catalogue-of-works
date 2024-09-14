\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key e \minor \time 4/4 \autoBeamOff
  r8^\partTs h e4~ e8[ d16 e] c8. c16
  h8 h g e e' fis16 cis dis4
  e r r2
}

text = \lyricmode {
  Lae -- ta -- _ tus
  sum in his quae di -- cta sunt mi --
  hi
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
