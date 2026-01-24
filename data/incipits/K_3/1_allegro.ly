\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key g \major \time 2/4 \tempoMarkup "Allegro"
    \partial 8 g''8 h,( a) r g'
    h,( a) r g'
    fis16( g) e( fis) d( e) c( d)
    h8 g r d'\p
    d,4 r8 d'
    d,4 r8 d'
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key g \major \time 2/4 \tempoMarkup "Allegro"
    \partial 8 r8 r fis g( h)
    r fis g( h)
    a4 r
    r8 d,\p g( fis)
    r d h'( a)
    r d, g( fis)
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key g \major \time 2/4 \tempoMarkup "Allegro"
    \partial 8 r8 r d h( g)
    r d' h( g)
    d'4 fis
    g r8 d\p
    g( fis) r d
    h( g) r d'
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
