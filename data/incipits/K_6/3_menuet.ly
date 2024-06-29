\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \major \time 3/4 \tempoMarkup "[no tempo]"
    f4-! a-! b-!
    c-! d-! e-!
    f-! g-! a-!
    b8. g16 g4( a)
    f,\p g a
    b8. g16 g4( a)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \major \time 3/4 \tempoMarkup "[no tempo]"
    f4-! a-! b-!
    c-! d-! e-!
    f-! g-! a-!
    b8. g16 g4( a)
    f,\p g a
    b8. g16 g4( a)
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \major \time 3/4 \tempoMarkup "[no tempo]"
    r4 f-! g-!
    a-! b-! c-!
    d e, f
    g c, f
    r e\p f
    g c, f
  }
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
  >>
}
