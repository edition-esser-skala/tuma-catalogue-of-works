\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 3/4 \tempoMarkup "Andante"
    r4 r r8 c''\p
    c( h) h4 r8 h
    h( a) a4 r8 a
    gis( a) e( f) c( d)
    a f' h,4.\trill a8
    a4 r r8 g'!\f
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 3/4 \tempoMarkup "Andante"
    r8 e'\p c a f'16( e) f8
    r d h g e'16( d) e8
    r c a f d'16( c) d8~
    d c gis( a) e d
    c a' a4 gis\trill
    a r r8 cis\f
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \minor \time 3/4 \tempoMarkup "Andante"
    a'4\p r r
    g r r
    f r r
    e r r
    r r8 e' e e
    a,16 g! f e d c h a a'8 r
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
