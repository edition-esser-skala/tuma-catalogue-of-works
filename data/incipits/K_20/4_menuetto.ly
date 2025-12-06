\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \major \time 3/4 \tempoMarkup "[no tempo]"
    \tuplet 3/2 4 { f'8 g a } g4 f
    \tuplet 3/2 4 { e8 f g } c,2
    \tuplet 3/2 4 { a8 b c } b a g f
    \tuplet 3/2 4 { e f g } c,2
    \tuplet 3/2 4 { d'8 e f } c2
    \tuplet 3/2 4 { b8 c d } a2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \major \time 3/4 \tempoMarkup "[no tempo]"
    \tuplet 3/2 4 { f'8 g a } g4 f
    \tuplet 3/2 4 { e8 f g } c,2
    \tuplet 3/2 4 { a8 b c } b a g f
    \tuplet 3/2 4 { e f g } c,2
    \tuplet 3/2 4 { d'8 e f } c2
    \tuplet 3/2 4 { b8 c d } a2
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \major \time 3/4 \tempoMarkup "[no tempo]"
    f4 b2
    c4 c,8 d e f
    f4 b,2
    c4 e8 d c4
    b' a g
    g f f,
  }
}

BassFigures = \figuremode {
  %tacet
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
    \new FiguredBass { \BassFigures }
  >>
}
