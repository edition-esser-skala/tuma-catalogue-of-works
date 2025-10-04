\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Allegro"
    d'4~ d16 e fis g g,4. g'8
    g,4~ g16 g' fis g g,4~ g16 g' a h
    a d, d d c h h a \tuplet 3/2 8 { h a g } g'8 \tuplet 3/2 8 { h,16 a g } g'8
    fis16 d d d c h h a \tuplet 3/2 8 { h a g } r8 r \tuplet 3/2 8 { h'16 a g }
    a8 d \appoggiatura a g4 \tuplet 3/2 8 { fis16 e d } r8 r \tuplet 3/2 8 { e16 d c } %5
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Allegro"
    h8 d16 c h4 r8 d16 c h4
    r8 c16 d e4 r8 d16 c h8 d'
    fis, fis g a d,4 r8 h'
    a16( g) fis8 g a r d,16 c h8 d'
    d4 d8 cis d16 d, fis a d8 g,
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Allegro"
    g'8 h16 a g4 r8 h16 a g4
    r8 e16 d c4 r8 h16 a g8 g'
    d4 e8 fis g4 r8 g,
    d'4 e8 fis g h16 a g4
    fis e d r8 c
  }
}

BassFigures = \figuremode {
  %tacet
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
