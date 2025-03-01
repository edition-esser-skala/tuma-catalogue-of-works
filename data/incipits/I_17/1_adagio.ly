\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 3/4 \tempoMarkup "Adagio"
    r4 r c'
    d g, g'~
    g c, f~
    f8 as g f es d
    es4 c r
    R2.
    r4 r c
    h2 g'4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 3/4 \tempoMarkup "Adagio"
    R2.*4
    r4 r c'
    d g, g'~
    g c, f~
    f8 as g f es d
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \dorian \time 3/4 \tempoMarkup "Adagio"
    c'4 c, c'~
    c b8 as b4
    as2 as4
    g2 g4
    c, c'2~
    c4 b!8 as b4
    as2 as4
    g2 g4
  }
}

BassFigures = \figuremode {
  r2.
  <2>4 <6>2
  <7> <6>4
  <_!>2.
  r
  <2>4 <6>2
  <7>2 <6>4
  <_!>2.
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
