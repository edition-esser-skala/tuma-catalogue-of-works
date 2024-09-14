\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 4/4 \tempoMarkup "Adagio"
  r8^\partVi b' b b es2
  r8 b d f as2 \gotoBar "6"
  \clef soprano \autoBeamOff b,4~^\partSs b16[ g] f[ es] c'2
  b4 r b2
}

text = \lyricmode {
  \skips 8
  Sal -- ve, sal --
  ve, "sal -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
