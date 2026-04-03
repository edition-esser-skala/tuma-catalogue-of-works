\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 4/4 \tempoMarkup "Andante"
  h''16^\partVi a g fis e e e e h' a g fis e e e e \gotoBar "10"
  e, e' c a \tuplet 3/2 8 { g fis e } fis8
    \clef soprano \autoBeamOff h4.^\partSs e8
  dis4 e8 fis g16[ fis] e8 r e
}

text = \lyricmode {
  \skips 24
  Be -- ne --
  di -- ctus, qui ve -- nit, qui
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
