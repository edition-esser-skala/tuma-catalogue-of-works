\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twotwotime \key c \dorian \time 2/2 \tempoMarkup "Allabreve"
    R1
    r2 g''~
    g4 d d e
    f e f2~
    f4 c c d
    es! d es2~
    es d4\trill c
    h2 c~
    c h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twotwotime \key c \dorian \time 2/2 \tempoMarkup "Allabreve"
    c'1
    h
    b
    a
    as
    g
    fis
    f2 es
    d1\trill
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twotwotime \key c \dorian \time 2/2 \tempoMarkup "Allabreve"
    R1*9
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
