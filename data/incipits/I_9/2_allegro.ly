\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "Allegro"
    a8 e''\f e e cis e e e
    h e e e a, e' e e
    gis, e' e e fis16 e d e fis g fis \hA g
    fis e d e fis g fis \hA g fis e d e fis e fis gis
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "Allegro"
    a4 r r2 \noBreak
    R1*3
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \tempoMarkup "Allegro"
    a8 a'16\f h cis8 h a4 r8 a
    gis16( fis gis8) r gis fis16( e fis8) r fis
    e16( d e8) r e d d' d d
    d, d' d d d, d' d h
  }
}

BassFigures = \figuremode {
  r1
  r2 <7>4. <\t>8
  r1
  r2.. <6\\>8
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
