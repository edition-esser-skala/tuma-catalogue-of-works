\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 3/4 \tempoMarkup "Menuet"
    d8( fis a d fis a)
    e cis \appoggiatura h a2
    cis,8( e a cis e g)
    fis d d,2
    \tuplet 3/2 4 { a''8 gis fis } \appoggiatura e d2
    \tuplet 3/2 4 { gis8 fis e } \appoggiatura d cis2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 3/4 \tempoMarkup "Menuet"
    d8( fis a d fis a)
    e cis \appoggiatura h a2
    cis,8( e a cis e g)
    fis d d,2
    \tuplet 3/2 4 { a''8 gis fis } \appoggiatura e d2
    \tuplet 3/2 4 { gis8 fis e } \appoggiatura d cis2
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key d \major \time 3/4 \tempoMarkup "Menuet"
    fis4 d a'
    a8.[ e16 fis8. fis16] e4
    e e cis
    a8.[ a'16 h8. h16] a4
    r fis h
    r e, e
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \major \time 3/4 \tempoMarkup "Menuet"
    d4 fis d
    cis8.[ cis16 d8. d16] cis4
    a cis a
    d8.[ fis16 g8. g16] fis4
    r h gis
    r a a,
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
