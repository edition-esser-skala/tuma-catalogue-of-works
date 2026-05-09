\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/8 \tempoMarkup "Vivace"
  \partial 8 r16 b''^\partVi b,8 b,8. b''16
  b,8 b,8. f''16
  \appoggiatura f8 g8 a,8. es'16
  \appoggiatura es8 d4 r16 f,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
