\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 3/8 \tempoMarkup "Allegro"
    g'4.
    d'
    g8 fis e
    d4.
    c8-! c( h)
    e-! e( d)
    g, c h
    \appoggiatura h a4 r8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 3/8 \tempoMarkup "Allegro"
    g'4.
    d'
    g8 fis e
    d4.
    a8 a( g)
    c g4
    d8 e16 fis g8
    g fis r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key g \major \time 3/8 \tempoMarkup "Allegro"
    r8 g g'
    g fis d
    e d c
    h a g
    r fis'( g)
    r c,( h)
    h' a g
    d4 r8
  }
}

BassFigures = \figuremode {
  % tacet
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
