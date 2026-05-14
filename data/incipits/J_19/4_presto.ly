\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 3/8 \tempoMarkup "Presto"
    a''8( g) a-!
    fis d'4
    a,8( h) cis-!
    d4.
    fis8( e) d-!
    e a4
    d,8( cis) h-!
    cis4.
    fis,8( e) d-!
    cis a''4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 3/8 \tempoMarkup "Presto"
    a''8( g) a-!
    fis d'4
    a,8( h) cis-!
    d4.
    fis8( e) d-!
    e a4
    d,8( cis) h-!
    cis4.
    fis,8( e) d-!
    cis a''4
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key d \major \time 3/8 \tempoMarkup "Presto"
    fis4 r8
    fis a h
    d,4 e8
    fis a g
    fis4 r8
    a h cis
    a4 e8
    e cis16 d e8
    a,4 h8
    cis e cis
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \major \time 3/8 \tempoMarkup "Presto"
    d4 r8
    d fis g
    fis4 e8
    d fis e
    d4 r8
    cis' h a
    fis4 gis8
    a a,16 h cis8
    d cis h
    a cis a
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
        \set Staff.instrumentName = "vla"
        \Viola
      }
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
  >>
}
