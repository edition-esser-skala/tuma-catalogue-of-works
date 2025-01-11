\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Recitativo"
  c'8^\partSs c d e h8. h16 h4 \gotoBar "7"
  \key g \major \clef treble \autoBeamOn \tempoMarkup "Andante"
    g8^\partVi g, h''8. c16 d h a g fis a d, c'
}

text = \lyricmode {
  In co -- lom -- bae spe -- ci -- e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
