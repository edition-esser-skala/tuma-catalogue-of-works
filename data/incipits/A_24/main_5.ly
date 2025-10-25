\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 4/4 \tempoMarkup "Andante"
  e'4.^\partVi h8 c4 h16 a g fis
  g fis e8 r16 h' h e e dis dis8 r16 h h fis' \gotoBar "9"
  \clef soprano \autoBeamOff e4.^\partSs h8 c4 h16[ a] g[ fis]
  g[ fis] e8
}

text = \lyricmode {
  \skips 19
  Be -- ne -- di -- ctus, qui
  ve -- nit,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
