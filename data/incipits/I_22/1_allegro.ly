\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key b \major \time 3/8 \tempoMarkup "Allegro"
    b'8 b, c
    b'' b b
    b, d, es
    b'' b b
    b, f g
    b' b b
    a16( g) f4
    b,16( a) b4
    a16( g) f4
    b,16 a b4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key b \major \time 3/8 \tempoMarkup "Allegro"
    b'8 b, c
    b'' b b
    b, d, es
    b'' b b
    b, f g
    b' b b
    c,8. b16 a8
    f4.
    c4 c8
    b16 a b4
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key b \major \time 3/8 \tempoMarkup "Allegro"
    b'8 b, c
    R4.
    b'8 d, es
    R4.
    b'8 f g
    R4.
    f8 g a
    b c d
    f,, g a
    b d c
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
}
