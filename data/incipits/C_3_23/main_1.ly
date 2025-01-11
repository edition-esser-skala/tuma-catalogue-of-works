\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Recitativo"
  r4 g'^\partSs c c8 d
  e4 e r2 \gotoBar "9"
  \clef treble \autoBeamOn \tempoMarkup "Tempo moderato"
    g8^\partVi g4 a16 h c h c4 c,8
}

text = \lyricmode {
  In cor -- de Ger -- tru -- dis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
