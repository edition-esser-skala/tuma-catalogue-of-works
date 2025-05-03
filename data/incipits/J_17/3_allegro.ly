\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 3/8 \tempoMarkup "Allegro"
    d'8 a' a,
    d d, r
    a'' a, cis
    d d, r
    \tuplet 3/2 8 { h''16 a g a[ g fis] } g dis
    e8 e, e'
    \tuplet 3/2 8 { a16 g fis g[ fis e] } fis cis
    d8 d, d'
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 3/8 \tempoMarkup "Allegro"
    fis4 r8
    d a' cis,
    d fis r
    a a, fis'
    d fis r
    \tuplet 3/2 8 { h16 a g a[ g fis] g fis e }
    d8 e r
    \tuplet 3/2 8 { a16 g fis g[ fis e] fis e d }
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \major \time 3/8 \tempoMarkup "Allegro"
    d4 e8
    fis4 e8
    d4 e8
    fis fis d
    g fis h,
    e4 r8
    fis e a,
    d4 r8
  }
}

BassFigures = \figuremode {
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
