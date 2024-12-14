\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key a \minor \time 2/4 \tempoMarkup "Allegro"
    \partial 8 a''8 a,( c) h( d)
    c a r e
    a( c) h( d)
    c a r4
    f'8( a) a,( c)
    h g! r4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key a \minor \time 2/4 \tempoMarkup "Allegro"
    \partial 8 r8 e2~
    e4 a'8 a,
    r4 e~
    e a'8 a,
    r4 d,~
    d g'!8 g,
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key a \minor \time 2/4 \tempoMarkup "Allegro"
    \partial 8 r8 a'4 gis
    a r
    r8 a4 gis8
    a4 r
    d, f
    g! r
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
