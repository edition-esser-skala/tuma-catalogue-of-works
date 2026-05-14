\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key es \major \time 3/4 \tempoMarkup "Andante"
    \partial 4 es'8. g,16 g8 f f4 as
    \appoggiatura as g2 b'8 es,16 d
    d8 c c4 c'
    \appoggiatura es,4 d2 b'8. b,16
    c2 as'8. as,16
    b2 g'8. g,16
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key es \major \time 3/4 \tempoMarkup "Andante"
    \partial 4 es4 es8( d) d4 f
    \appoggiatura f es2 es4
    es2 as4
    \appoggiatura g f2 d4
    es2 f4
    d es r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key es \major \time 3/4 \tempoMarkup "Andante"
    \partial 4 es,4 b'2 d4
    es2 g,4
    as2 as4
    b b'2
    b8( as) as2
    as8( g) g4 es
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
