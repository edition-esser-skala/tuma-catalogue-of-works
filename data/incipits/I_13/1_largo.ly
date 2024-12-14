\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \minor \time 3/4 \tempoMarkup "Largo"
    r4 a'(\p f)
    r d( b')
    r a, <cis' e>
    r d, f'
    r g b,
    r f'( a)
    r c es,
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \minor \time 3/4 \tempoMarkup "Largo"
    r4 f(\p d)
    d' b( g)
    e' cis( a)
    f' a,( d,)
    e c'!( g')
    a, c( f)
    f, a( c)
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \minor \time 3/4 \tempoMarkup "Largo"
    d2\p r4
    b'2 r4
    cis,2 r4
    d2 r4
    c!2 r4
    f2 r4
    a2 r4
  }
}

BassFigures = \figuremode {
  r2.
  r
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
