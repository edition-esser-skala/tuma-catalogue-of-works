\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twotwotime \key es \major \time 2/2 \tempoMarkup "Allegro moderato"
    \partial 4 es4 b' b b c8( d)
    es4 es, r es
    f8 g as b c4 b8( as)
    \grace b as4\trill g r g
    as a b h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twotwotime \key es \major \time 2/2 \tempoMarkup "Allegro moderato"
    \partial 4 r4 R1*2 %30
    r2 r4 d'\trill
    es8 es,( d es) es2
    r2 r4 d'
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twotwotime \key es \major \time 2/2 \tempoMarkup "Allegro moderato"
    \partial 4 r4 es2 d
    c g
    as2. b4
    es2 r4 es
    f es d g
  }
}

BassFigures = \figuremode {
  r4 r2 <6>
  r q
  q2. <7>4
  <4> <3>2.
  r4 <4!> <6> <_!>
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
