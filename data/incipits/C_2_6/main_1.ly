\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key g \minor \time 4/4 \tempoMarkup "Tempo moderato"
  d4^\partTrbi g8. a16 fis8 g es8.\trill es16
  d4 r8 g~ g16 fis a g fis es! d c \gotoBar "7"
  b b' a g fis8.\trill g16 \set Staff.forceClef = ##t \clef alto \autoBeamOff d4^\partAs g8. a16
  fis8 g es8. es16 d4 r8 g
}

text = \lyricmode {
  \skips 22
  Re -- gis su -- %7
  per -- ni nun -- ti -- a "do -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
