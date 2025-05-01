\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 3/2 \tempoMarkup "Largo"
  g''2^\partVi as h,
  c es4 d g f \gotoBar "12"
  \clef soprano \autoBeamOff c1^\partSc c2
  c1 c2
}

text = \lyricmode {
  \skips 8
  Mi -- se --
  re -- re
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
