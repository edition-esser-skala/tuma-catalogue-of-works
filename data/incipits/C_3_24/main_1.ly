\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 4/4 \tempoMarkup "Allegro moderato"
  r8 a''^\partVi fis g a d16 h g4 \gotoBar "9"
  \clef alto \autoBeamOff r2^\partAs r8 a, fis g
  a d16[ h] g8. g16 fis4 r
}

text = \lyricmode {
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
