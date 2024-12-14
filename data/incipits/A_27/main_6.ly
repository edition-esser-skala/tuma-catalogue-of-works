\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  d4.^\partTs e8 c2
  h4 d d cis
  r8 e e g, g4 fis
}

text = \lyricmode {
  A -- gnus De --
  i, qui tol -- lis
  pec -- ca -- ta mun -- di:
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
