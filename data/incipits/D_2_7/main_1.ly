\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 4/4 \tempoMarkup "Adagio"
  d'8(-.^\partVi d-. d-. d-.) c(-. c-. c-. c-.)
  b([-. b-.)] \clef tenor \autoBeamOff d,^\partTs d c4 c
  c8 c b a b8. a16 g4
}

text = \lyricmode {
  \skips 3
  Nunc di -- mit -- tis
  ser -- vum tu -- um, Do -- mi -- ne
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
