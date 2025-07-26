\version "2.24.2"
\include "header.ly"

Violino = {
  \relative c' {
    \clef treble
    \twofourtime \key f \minor \time 2/4 \tempoMarkup "Vivace"
    \partial 8 c'8 f f4 f8~
    f e16 f g f e des!
    c8 des4 c16( b)
    as8 c4 b16( as)
    g8 b4 as16( g)
    as( g) f8 r f'16( g)
  }
}

Chords = {
  \relative c' {
    \clef soprano
    \twofourtime \key f \minor \time 2/4 \tempoMarkup "Vivace"
    \partial 8 r8 R2*6
  }
}

Cembalo = {
  \relative c {
    \clef bass
    \twofourtime \key f \minor \time 2/4 \tempoMarkup "Vivace"
    \partial 8 r8 r f as f
    c'4 c,
    r e
    r f
    b, c
    f,8 f'16 g as8 g
  }
}

BassFigures = \figuremode {
  r8 r2
  <_!>
  r4 <6 5>
  r2
  <6 5>4 <_!>
  r <6>
}

\score {
  <<
    \new Staff \with { \smallStaffDistance } {
      \set Staff.instrumentName = "vl"
      \Violino
    }
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "cemb"
      \new Staff { \Chords }
      \new Staff { \Cembalo }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
