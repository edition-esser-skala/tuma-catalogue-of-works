\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \major \time 3/4 \tempoMarkup "Larghetto"
    cis'8. d16 \appoggiatura cis4 h2
    a8( gis) a8.( h16) cis4
    h8( a) h8.( cis16) d4
    \appoggiatura d8 cis4 h8( cis) a4
    cis8. d16 \appoggiatura cis4 h2
    a8( h) cis( dis) e4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \major \time 3/4 \tempoMarkup "Larghetto"
    e4 gis2
    a a4~
    a gis8( fis) gis4
    a r r
    e gis2
    a h4
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \major \time 3/4 \tempoMarkup "Larghetto"
    a4 e' d
    cis2 cis4
    d e2
    a, r4
    a e' d
    cis2 gis4
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
