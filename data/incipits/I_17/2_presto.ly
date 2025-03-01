\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Fuga · Presto"
    r8 g'' g g g f16 es f8 g
    es d c2 h4
    c r8 es d es16 f g f es d
    c4 r8 c b! c16 d es d c b
    as4 r8 \hA as g a16 h c4
    c8 a b g g4 fis
    g b a d
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Fuga · Presto"
    R1*5
    r8 d' d d d c16 b c8 d
    b a g2 fis4
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Fuga · Presto"
    R1
    c4 es d g
    es8 c c'2 b!4~
    b8 es, as2 g4~
    g8 c, f2 es4
    d g d d,
    g2 d'
  }
}

BassFigures = \figuremode {
  r1
  r4 <6> <7> <_!>
  <6>2 <2>4 <6>
  <2> <3> <2> <6>
  <2-> <3[-]> <2> <6>
  <[5]! _+>2 <4>4 <_+>
  r2 <4>4 <_+>
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
    \new FiguredBass { \BassFigures }
  >>
}
