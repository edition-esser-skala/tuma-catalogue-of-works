\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/4 \tempoMarkup "Largo"
    h''4 \grace e,8 dis4 fis
    e h r
    c h a
    g8( fis) e4 r
    e' g( c)
    fis, ais( h)
    e, gis( a)
    \appoggiatura e dis2 r4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/4 \tempoMarkup "Largo"
    g'4 a2
    h r4
    e, fis2
    h, r4
    g'2 r4
    r fis2
    r4 e2
    fis r4
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key e \minor \time 3/4 \tempoMarkup "Largo"
    e4 fis2
    g4 gis r
    a dis,2
    e r4
    e'2.~
    e4 d2~
    d4 c2
    h r4
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
