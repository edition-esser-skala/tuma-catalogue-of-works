\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key es \major \time 4/4 \tempoMarkup "Andante"
    \partial 8 es'8 f16( es) es8-! r es f16( es) es8-! r b'
    c16( b) b8 as16( g as) b-! g( es) es8-! c'4~
    c4. h8\trill c es,16( c) as'4~
    as4. g8\trill as c,16( as) f'4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key es \major \time 4/4 \tempoMarkup "Andante"
    \partial 8 r8 r b' c16( b) b8-! r b es16( d) d8-!
    es4. d8\trill es4 r8 g
    as16( g) g( f) f es d8 es4 r8 es
    f16( es) es( des) des c b8 c4 r8 c
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key es \major \time 4/4 \tempoMarkup "Andante"
    \partial 8 r8 r es as16( g) g8-! r es c'16( b) b8-!
    as16( g) g8 f b, es4 r8 es'
    f16( es) es( d) d8 g, c4 r8 c
    des16( c) c( b) b8 es, as4 r8 as
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
