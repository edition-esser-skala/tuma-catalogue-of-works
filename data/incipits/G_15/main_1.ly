\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 4/4 \tempoMarkup "Andante" \autoBeamOff
  a'4.^\partSc a8 a4 r8 b
  gis4 a8 a a gis r4\fermata
  \tempoMarkup "Allegro" e'4 e8 d cis cis d[ e]
}

text = \lyricmode {
  Ky -- ri -- e e -- 
  lei -- son, e -- lei -- son,
  Chri -- ste e -- lei -- son, "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
