\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key b \major \time 3/4 \tempoMarkup "Menuet"
    b'4 d f
    b,,2.
    c'4 f, c'
    d b r
    d8 f f2
    c8 f f2
    g4 d e
    f2 r4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key b \major \time 3/4 \tempoMarkup "Menuet"
    b'4 d f
    b,,2.
    c'4 f, c'
    d b r
    d8 f f2
    c8 f f2
    g4 d e
    f2 r4
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key b \major \time 3/4 \tempoMarkup "Menuet"
    b2 r4
    d b8 c d4
    es f f,
    b d c
    b2 b'4
    a2 a4
    b2 c4
    f, f,8 g a4
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
