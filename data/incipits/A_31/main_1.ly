\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  b'4.^\partBc b8 f4. f8
  g4. f16[ es] d8 b' a[ f]
  g f16[ es] d8[ c] b c d[ es]~
  es[ d16 c] d8 d es[ f g a]
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- _ son, e -- lei --
  son, e -- lei -- son, e -- lei --
  son, e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
