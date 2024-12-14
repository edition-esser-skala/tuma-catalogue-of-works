\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Allegretto"
    R1*2
    r8 d' b'16( a) b8 es, es es es
    c f c'16( b) c8 d, d d d
    b d b'16( a) b8 g16( es) es( h) h( c) c( d)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Allegretto"
    r8 d' d g g16( fis) e( d) r8 g
    g16( fis) e( d) r8 es es16( d) c( b) d( c) b( a)
    b a g8 r4 g8 a16 h c8 d
    es a,, r4 f'8 g16 a b8 c
    d b, r4 g'2~
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Allegretto"
    g8 a b g d' c b g
    d' c b c b g' a, fis'
    g,4 r8 g c4. b8
    a4. a8 b4. a8
    g4. g8 c d es d
  }
}

BassFigures = \figuremode {
  r2 <_+>4 <6>
  <_+> <6>8 <_-> <6>4 <7>8 <6>
  r1
  <6>
  r2 r8 <6!> <6> <6!>
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
