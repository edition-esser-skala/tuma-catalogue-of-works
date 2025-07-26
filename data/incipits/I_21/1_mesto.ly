\version "2.24.2"
\include "header.ly"

Violino = {
  \relative c' {
    \clef treble
    \key f \minor \time 3/4 \tempoMarkup "Mesto"
    R2.
    r8 c'( e g f \hA e)
    f( c f as g f)
    g( c, g' b as g)
    as2.
    g4. g8( f e)
  }
}

Chords = {
  \relative c' {
    \clef soprano
    \key f \minor \time 3/4 \tempoMarkup "Mesto"
    r8 c( f as g f)
    g4 c,4. c'16( b)
    as4 f f'~
    f e2\trill
    f2.~
    f4 e c
  }
}

Cembalo = {
  \relative c {
    \clef bass
    \key f \minor \time 3/4 \tempoMarkup "Mesto"
    R2.*4
    r8 c( f as g f)
    g( c, g' b as g)
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
