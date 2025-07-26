\version "2.24.2"
\include "header.ly"

Violino = {
  \relative c' {
    \clef treble
    \key f \minor \twotwotime \time 2/2 \tempoMarkup "Allabreve"
    c''1
    des2 f,
    e f~
    f g
    as4 c, d e
    f g as2~
  }
}

Chords = {
  \relative c' {
    \clef soprano
    \key f \minor \twotwotime \time 2/2 \tempoMarkup "Allabreve"
    r4 f g as
    b c des2~
    des4 c8 b as4 g8 f
    b4 g c c,
    f'1
    as2 c,
  }
}

Cembalo = {
  \relative c {
    \clef bass
    \key f \minor \twotwotime \time 2/2 \tempoMarkup "Allabreve"
    R1*6
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
