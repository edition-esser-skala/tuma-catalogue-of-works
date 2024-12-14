\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key h \minor \time 2/4 \tempoMarkup "Larghetto"
    \partial 8 fis8 h16( ais) h8 h16( ais) h8
    r h' h,4
    cis16 h cis8~ cis16 cis d e
    d8 h' h,4
    cis16 h cis8~ cis16 cis d e
    d8 h h,4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key h \minor \time 2/4 \tempoMarkup "Larghetto"
    \partial 8 r8 fis4 fis
    h r8 h
    h4 ais
    h r8 h
    h4 ais
    h r8 fis'
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key h \minor \time 2/4 \tempoMarkup "Larghetto"
    \partial 8 r8 h4 a
    g d
    e fis
    h r8 d
    e4 fis
    h, r
  }
}

BassFigures = \figuremode {
  r8 r2
  r
  r
  r
  r
  r
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
