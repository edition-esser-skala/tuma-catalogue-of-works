\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 2/2 \autoBeamOff \tempoMarkup "Allegro"
  a'2.^\partSc a4
  a2 h
  a h4 h
  a1
}

text = \lyricmode {
  U -- nus
  ex di --
  sci -- pu -- lis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
