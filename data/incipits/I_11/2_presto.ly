\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Presto"
    R1*5
    a''2 a,4. h16 c
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Presto"
    d'2 d,4. e16 f
    g8 a b4 c2
    c,4. d16 e f8 g a4
    b e,8 g a4 f8 d
    e2 d8 f e gis,
    a4 a' c f~
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "Presto"
    r4 d f b~
    b8 a16 b g8 f e4 c
    e a4. g16 a f8 e
    d4 g8 e cis4 d~
    d cis d c8 h
    a4 r r2
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
