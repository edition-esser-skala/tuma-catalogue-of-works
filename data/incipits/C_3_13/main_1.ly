\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key f \major \time 4/4 \tempoMarkup "Andante"
  f4^\partTrbi g8 a g c, \grace c' b8.\trill a16
  a4 r16 f g a d, f g a b a g f \gotoBar "5"
  \set Staff.forceClef = ##t \clef alto \autoBeamOff
    f4^\partAs g8 a g c, b'8. a16
  a4 r8 a d, b'16[ a] g[ f] e[ d]
}

text = \lyricmode {
  \skips 19
  Al -- mo fa -- cto -- ri o -- mni --
  um, pi -- o fau -- to -- ri
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
