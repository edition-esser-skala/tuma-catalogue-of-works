\version "2.24.2"
\include "header.ly"

Violino = {
  \relative c' {
    \clef treble
    \key f \minor \time 3/8 \tempoMarkup "Amoroso"
    r8 as' f
    c'16.\trill b32 c8 r
    as16.[\trill g32] as8 as'~
    as g b~
    b as c~
    c b as
  }
}

Chords = {
  \relative c' {
    \clef soprano
    \key f \minor \time 3/8 \tempoMarkup "Amoroso"
    R4.
    r8 e c
    f16.[\trill e32] f8 f'~
    f e g~
    g f as~
    as g f
  }
}

Cembalo = {
  \relative c {
    \clef bass
    \key f \minor \time 3/8 \tempoMarkup "Amoroso"
    R4.*2
    r8 as' f
    c'16.[ b32] c8 c,
    f16.[ e32] f8 f,
    b4 h8
  }
}

BassFigures = \figuremode {
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
