\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \minor \time 4/4 \tempoMarkup "Andante"
  c'8^\partVi c32 c b as g8 g32 f es d es16 es d c s4 \gotoBar "5"
  \clef bass \autoBeamOff c4^\partBs g es16[ d] c8 r4
  r8 g'4 c8 c b g, b'
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
