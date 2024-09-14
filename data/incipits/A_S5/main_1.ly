\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  r4 a'8^\partSc c h e, d'[ c16 h]
  c8 a f'[ e] d c c[ h]
  c4 r r2
}

text = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, e -- lei -- son, e -- lei --
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
