\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 3/4 \tempoMarkup "Menuet"
    d'4 g e
    d g, r
    g' fis r
    a g r
    h a r
    c h r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 3/4 \tempoMarkup "Menuet"
    d'4 g e
    d g, r
    g' fis r
    a g r
    h a r
    c h r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key g \major \time 3/4 \tempoMarkup "Menuet"
    g'2 c4~
    c h8 a g4
    h a8 h c4~
    c h8 c d4
    g, fis8 g a4~
    a g8 a h4
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
