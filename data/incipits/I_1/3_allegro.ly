\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 3/8 \tempoMarkup "Allegro"
    R4.*7
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 3/8 \tempoMarkup "Allegro"
    a'8 a, a'
    h4.
    c8 c, c'
    d4.
    e16 d c d e f
    e d c d e f
    d c h c d e
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \minor \time 3/8 \tempoMarkup "Allegro"
    a4 a'8~
    a gis16 fis gis8
    a4 c8~
    c h16 a h8
    c c, r
    c' c, r
    h' h, h'
  }
}

BassFigures = \figuremode {
  r4.
  <2>
  r
  <2>
  r
  r
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
