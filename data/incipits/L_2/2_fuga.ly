\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 3/8 \tempoMarkup "Fuga · [no tempo]"
    R4.*6
    g'8 g' g
    g fis16( g) a8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 3/8 \tempoMarkup "Fuga · [no tempo]"
    c8 c' c
    c h16( c) d8~
    d c16( d) e8~
    e d16 e f8~
    f e16 f g8~
    g f16 e d c
    h8 g h
    a4 c8
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \major \time 3/8 \tempoMarkup "Fuga · [no tempo]"
    c4 e8
    d4 f8
    e4 g8
    f4 a8
    g4 e16( d)
    e8 f4
    g8 g, r
    R4.
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
        \set Staff.instrumentName = "b"
        \Continuo
      }
    >>
  >>
}
