\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  c'4^\partSc h8 c c c c[ h]
  c \clef treble g'16[^\partVi e] a4 r16 f[ e d] g4
  \clef alto r8^\partAc g, g e a4. g16 a
}

text = \lyricmode {
  Cre -- do in u -- num De --
  um, \skips 4
  fa -- cto -- rem coe -- li et
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
