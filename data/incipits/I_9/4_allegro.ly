\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \major \time 3/8 \tempoMarkup "Allegro"
    R4.*7
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \major \time 3/8 \tempoMarkup "Allegro"
    a'4.
    h
    cis16 d e8 a,
    d \appoggiatura cis h4
    cis16 d e8 a,
    d \appoggiatura cis h4
    cis16 h cis a gis a
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \major \time 3/8 \tempoMarkup "Allegro"
    r8 a a'~
    a gis16 fis gis8
    a4 fis8
    d e e,
    a4 fis'8
    d e e,
    a4 r8
  }
}

BassFigures = \figuremode {
  r4.
  <2>
  r
  r
  r
  r8 <5 4> <\t _+>
  r4.
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
