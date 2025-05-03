\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Allegro"
    d8 d' d,16( e32 fis g a h cis) d8 d, d16( e32 fis g a h cis)
    d16. a,32 e'16. a,32 fis'16. a,32 g'16. a,32 a'8 a' a,16( h32 cis d e fis gis)
    a8 a, a16( h32 cis d e fis gis) a16. a,32 g'?16. a,32 fis'16. a,32 e'16. g,32
    fis4 r d''16. d,32 c'16. d,32 h'16. d,32 a'16. c,32
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Allegro"
    d8 d' d,16( e32 fis g a h cis) d8 d, d16( e32 fis g a h cis)
    d16. a,32 e'16. a,32 fis'16. a,32 g'16. a,32 a'4 e8 d
    cis16( d32 e fis gis a h) cis4 cis,8 e d cis16 e
    fis( g32 a h cis d e) fis8 fis, a4 r8 a,
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "Allegro"
    d8 d' d,16 e32 fis g a h cis d8 d, d16 e32 fis g a h cis
    d16. a,32 e'16. a,32 fis'16. a,32 g'16. a,32 a'4-! cis,8 h
    a4 cis8 h a4 a8 cis
    d16 e32 fis g a h cis d16. d,32 d'8 fis,4 r8 d
  }
}

BassFigures = \figuremode {
  r1
  r2.. <6\\>8
  r4. q2 <6 5>8
  r2 <6>4. <7>8
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
