\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 4/4 \tempoMarkup "Andante"
  \partial 8 es'8^\partVi \grace es d8. es16 \tuplet 3/2 8 { f g as } g8 \grace g16 f8 b, r es,16 es \gotoBar "9"
  g16 es' es f f4\trill es8 es, \clef soprano \autoBeamOff r^\partSs es'
  d es r \tuplet 3/2 8 { es16[ f g] } f[ d] c[ b] f'[ d] b[ as]
  g8. f16 es4 r2
}

text = \lyricmode {
  \skips 18
  Ma --
  ri -- a, Ma -- ri -- a gu -- stum
  sen -- ti -- o
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
