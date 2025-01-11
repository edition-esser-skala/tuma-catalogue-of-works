\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Recitativo"
  r4^\partAs d g g \gotoBar "8"
  \clef treble \time 3/8 \autoBeamOn \tempoMarkup "Andante"
    a'8^\partVi fis g
  a d h
}

text = \lyricmode {
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
