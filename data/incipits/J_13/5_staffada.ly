\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key b \major \time 2/2 \tempoMarkup "Staffada"
    r4 f' b2~
    b4 a8 g f2~
    f4 es8 d c4 f
    d b r es,
    f8 es f2 g4
    a8 g a2 b4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key b \major \time 2/2 \tempoMarkup "Staffada"
    R1*3
    r4 f b2~
    b4 a8 g f2~
    f4 es8 d c4 f
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key b \major \time 2/2 \tempoMarkup "Staffada"
    b2. c4
    d2. es4
    f2 f,
    b2. c4
    d2. es4
    f2 f,
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
