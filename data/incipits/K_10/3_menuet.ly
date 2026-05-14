\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \major \time 3/4 \tempoMarkup "Menuet"
    c''2 b8 a
    g4 c,2
    d8 c es d f e
    b'4 \appoggiatura b a2
    c8( a) \appoggiatura a4 g2
    c8( f,) \appoggiatura f4 e2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \major \time 3/4 \tempoMarkup "Menuet"
    c''2 b8 a
    g4 c,2
    d8 c es d f e
    b'4 \appoggiatura b a2
    c8( a) \appoggiatura a4 g2
    c8( f,) \appoggiatura f4 e2
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \major \time 3/4 \tempoMarkup "Menuet"
    f4 a b
    c b a
    b2 a4
    g f8 e f4
    r e8 d e4
    r c8 d e d
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
