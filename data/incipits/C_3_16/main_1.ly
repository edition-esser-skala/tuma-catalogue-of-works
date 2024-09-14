\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 4/4 \tempoMarkup "Adagio"
  d'8^\partVi b16 c d b es c d8 b16 c d b c a
  \clef bass \autoBeamOff d,,4^\partBs d8 d g4 g8 b
  fis4. fis8 g8. g16 g4
}

text = \lyricmode {
  \skips 14
  Do -- mi -- ne De -- us cre --
  a -- tor o -- mni -- um
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
