\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \major \time 4/4 \tempoMarkup "Allegro"
    \partial 8 f'8 f,8. \tuplet 3/2 16 { f'32 g a } f,8 e d8. \tuplet 3/2 16 { f'32 g a } d,,8 c
    \kneeBeam b8. \tuplet 3/2 16 { f''32 g a } b,,8 a g b'' \appoggiatura c b8.\trill a32 g
    a16 f e f c a g a f8. \tuplet 3/2 16 { f'32 g a } f,8 e
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \major \time 4/4 \tempoMarkup "Allegro"
    \partial 8 f'8 f,8. \tuplet 3/2 16 { f'32 g a } f,8 e d8. \tuplet 3/2 16 { f'32 g a } d,,8 c
    \kneeBeam b8. \tuplet 3/2 16 { f''32 g a } b,,8 a g4 \appoggiatura f''8 e4\trill
    f r f,8. \tuplet 3/2 16 { f'32 g a } f,8 e
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \major \time 4/4 \tempoMarkup "Allegro"
    \partial 8 r8 f,4 f'8 e d4 d8 c
    b4 b8 a g4 c8 c,
    f4 r f f'8 e
  }
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
