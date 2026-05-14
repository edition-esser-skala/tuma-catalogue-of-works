\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key es \major \time 3/4 \tempoMarkup "Menuet"
    b'4-! b2-!
    es,4-! es2-!
    f4 b, as'
    \appoggiatura b8 as4 g r
    es'( b) g'
    f( b,) as'
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key es \major \time 3/4 \tempoMarkup "Menuet"
    b'4-! b2-!
    es,4-! es2-!
    f4 b, as'
    \appoggiatura b8 as4 g r
    es'( b) g'
    f( b,) as'
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key es \major \time 3/4 \tempoMarkup "Menuet"
    es4 es d
    c b8( as) g4
    as b2
    es4 g f
    es2 r4
    d2 r4
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
