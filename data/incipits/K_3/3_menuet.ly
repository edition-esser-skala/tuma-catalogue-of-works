\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 3/4 \tempoMarkup "[no tempo]"
    d'4 d( g)
    c, c( g')
    h, h( g')
    a,\trill g r
    g'8 d d2\trill
    e8( d) e( d) cis( d)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 3/4 \tempoMarkup "[no tempo]"
    d'4 d( g)
    c, c( g')
    h, h( g')
    a,\trill g r
    g'8 d d2\trill
    e8( d) e( d) cis( d)
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key g \major \time 3/4 \tempoMarkup "[no tempo]"
    r4 h'8( a) g4
    a2 r4
    g h,8 a g4
    d' g, h'8 a
    g4 h8 a g4
    fis2 r4
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
