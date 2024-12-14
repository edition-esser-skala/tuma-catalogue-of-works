\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allabreve"
    f'2 e
    r4 d d d
    d c8 b c2~
    c4 b8 a b4 g
    a d d8 e f g
    a4 a,2 h4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allabreve"
    a'2 g
    r4 b b b
    b a8 g a2~
    a4 g8 f g4 e
    f2 d'~
    d8 e f g a4 a,
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allabreve"
    f2 c
    r4 b b8 c d e
    f4 f, f'2
    g c,
    f1
    r4 f f f
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
