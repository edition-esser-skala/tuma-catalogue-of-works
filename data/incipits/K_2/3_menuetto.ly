\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    \tuplet 3/2 4 { c'8 d e } d4 g,
    f\trill e g'
    \tuplet 3/2 4 { f8 g a } d,4 c\trill
    h g g'
    fis8( g) g2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    \tuplet 3/2 4 { c'8 d e } d4 g,
    f\trill e g'
    \tuplet 3/2 4 { f8 g a } d,4 c\trill
    h g g'
    fis8( g) g2
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    c'4 h2
    a8 h c4 c,
    f2 e8 f
    g2 h4
    a h h,
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
}
