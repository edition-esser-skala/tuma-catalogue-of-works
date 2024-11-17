\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 4/4 \tempoMarkup "Adagio"
  g'2^\partVii \set Staff.forceClef = ##t as^\partVi
  g f \gotoBar "5"
  \clef bass \autoBeamOff g,2~^\partBs g4 f~
  f es es d8 d
}

text = \lyricmode {
  \skips 4
  Tae -- _
  det a -- ni -- mam
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
