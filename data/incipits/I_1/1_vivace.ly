\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Vivace"
    a'4~ a16. h32 c16 d e8 e h e
    c a \tuplet 3/2 8 { f'16 g a } dis,8 e e, \tuplet 3/2 8 { e'16 f! g! } cis,8
    d d, \tuplet 3/2 8 { d'16 e f! } h,8 c c, b'( a)
    gis( a) f'( e) gis( a) c, h16( a)
    a e a h a c h a h e, h' c h d c h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Vivace"
    R1*5
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Vivace"
    a4 a'2 gis4
    a2 gis4 g
    fis f e d8( c)
    h!( a) d'( c) h( a) e' e,
    a a, r a' a gis r gis
  }
}

BassFigures = \figuremode {
  r2 <5 2>4 <6>
  <5> <6>8 <4\+ 2> <6>4 <6>8 <4\+>
  <6>4 <4 2>2.
  <6\\>2 <6\\>4 <6 4>8 <5 _+>
  r2 <2>8 <6>4.
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
