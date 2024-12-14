\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Adagio"
    r8 fis' e cis r fis e cis
    r fis e4 dis8 e4 d8~
    d16 h cis a h cis d e cis8 d4 c8~
    c16 a h g a h c d h4~ h16 d cis h
    ais8 h4 a8~ a16 fis gis e fis gis a h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Adagio"
    a'16( h) a( h) a( h) a( h) a( h) a( h) a( h) a( h)
    a( h) a( h) a( h) a( h) a( fis) g( e) fis g? a h
    gis8 a4 g8~ g16 e fis d e fis g a
    fis8 g4 fis8~ fis16 g e dis e4~
    e16 cis! d h cis dis e fis dis8 e4 d8
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "Adagio"
    r8 d cis a r d cis a
    r d c c h h h h
    e e e e a, a a a
    d d d d g, g g g
    fis fis fis fis h h h h
  }
}

BassFigures = \figuremode {
  r1
  r4 <2> <7 _+>8 <6 4> <5 \t> <\t _!>
  <7 _+> <6 4> <5 \t> <\t _!> <7 3> <6 4> <5 \t> <\t _!>
  <7! 3> <6 4> <5 \t> <\t 3> <7>4 <6>
  <7 _+>8 <6 4> <5 \t> <\t _!> <7 _+> <6\\ 4> <5 \t> <\t _!>
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
