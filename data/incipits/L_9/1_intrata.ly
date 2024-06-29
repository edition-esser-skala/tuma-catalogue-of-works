\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \major \time 3/4 \tempoMarkup "[no tempo]"
    a'8 e a e h' e,
    cis'2 d4
    r e d
    cis16 h a8 cis e a d,
    cis16 h a8 cis e a d,
    cis16 h a8 e'2~
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \major \time 3/4 \tempoMarkup "[no tempo]"
    cis2 e4
    a8 e a e h' e,
    cis'2 e,4
    e2 cis'8 h
    a2 cis8 h
    a2 r4
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \major \time 3/4 \tempoMarkup "[no tempo]"
    a4 a' gis
    a2 r4
    a,8 a' gis a h gis
    a4 a, r8 gis'
    a4 a, r8 gis'
    a2 a,8 h
  }
}

BassFigures = \figuremode {
  r2 <6>4
  r2.
  r2 <6>8 <5>
  r2 r8 <5>
  r2 r8 <5>
  r2.
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
