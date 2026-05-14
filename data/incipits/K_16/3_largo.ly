\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \minor \time 3/4 \tempoMarkup "Largo"
    \partial 4 g'8. c16
    c8 h h4 g'
    \appoggiatura f8 es4 \appoggiatura d8 c4 es
    \appoggiatura es d2 h4
    c r g'
    e2.
    f2 as4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \minor \time 3/4 \tempoMarkup "Largo"
    \partial 4 r4 R2.
    r4 r g'8. c16
    c8. h16 h4 g'
    \appoggiatura f8 es4 \appoggiatura d8 c4 r
    r g8( b as g)
    as f f4 r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \minor \time 3/4 \tempoMarkup "Largo"
    \partial 4 c4 g'2 h,4
    c2 c4
    g'2 g,4
    c2 r4
    b' c c,
    f,2 r4
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
