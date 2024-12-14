\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 3/4 \tempoMarkup "Largo"
    r4 d' g~
    g fis f~
    f e a~
    a gis g~
    g fis g
    a8 es! d( c) b( a)
    b g b d( c d)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 3/4 \tempoMarkup "Largo"
    R2.*7
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key g \minor \time 3/4 \tempoMarkup "Largo"
    g'2.
    a2 h4
    c2 a4
    h2 cis4
    d2 b4
    fis2.
    g4 g g
  }
}

BassFigures = \figuremode {
  r2.
  <7>4 <6\\> <5!>
  <4> <_!> <8>
  <7> <6\\> <5!>
  <4> <_+> <6>
  r2.
  r
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
