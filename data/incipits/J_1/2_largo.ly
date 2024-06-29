\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \major \time 3/4 \tempoMarkup "Largo"
    c'4 \tuplet 3/2 4 { f8 g a } g f
    \grace f4 e2 f4
    d8( c) c( f) b,( g')
    a, c d( c) d( c)
    g' c, d( c) d( c)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \major \time 3/4 \tempoMarkup "Largo"
    R2.*5
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \major \time 3/4 \tempoMarkup "Largo"
    f2 b4
    c b a
    b a g
    f2 f4
    e2 e4
  }
}

BassFigures = \figuremode {
  r2 <6>8 <5>
  r2.
  r
  r
  r
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
