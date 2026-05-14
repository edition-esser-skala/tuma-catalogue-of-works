\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key a \minor \time 2/4 \tempoMarkup "Allegro"
    a'8 f' \appoggiatura f e4
    r8 gis,-! gis( a)
    r f' \appoggiatura f e4
    r8 gis,-! gis( a)
    r e e( d')
    r e, e( e')
    f16 e d c d c h a
    \appoggiatura a8 gis4 e
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key a \minor \time 2/4 \tempoMarkup "Allegro"
    a'4 r8 a d,4 c
    r8 a'16( gis) a4
    d, c
    r8 h'16( a) h4
    r8 c16( h) c4
    a f
    e2
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key a \minor \time 2/4 \tempoMarkup "Allegro"
    a8 d c4
    h a
    d c
    h a
    gis r
    a r
    d r
    e8 e16 d c8 h
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
