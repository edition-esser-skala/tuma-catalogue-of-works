\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Larghetto"
  c8.^\partVi \tuplet 3/2 16 { e32 d c } g'16 g g g c8 a,~ a16 c' c c \gotoBar "6"
  \tuplet 3/2 8 { \sbOn c16 c, c a' g f \sbOff } e8 d
    \clef tenor \autoBeamOff c8.[^\partTs \tuplet 3/2 16 { e32 d c] } g'16[ f] e[ d]
  c[ h] c8
}

text = \lyricmode {
  \skips 21
  Be -- _ ne -- %6
  di -- ctus,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
