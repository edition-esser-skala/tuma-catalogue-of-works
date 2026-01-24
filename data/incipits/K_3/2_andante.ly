\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key e \minor \time 2/4 \tempoMarkup "Andante"
    h''8(\p h,) h( dis)
    \appoggiatura dis e4 r8 e
    fis8. g32( a) g8 fis
    g16( fis) e8 r g
    c,( a') a( c,)
    h16( a) h8 r h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key e \minor \time 2/4 \tempoMarkup "Andante"
    g'4\p r8 a
    h4 e~
    e \appoggiatura e8 dis4\trill
    r16 e, e'8 e,4
    R2
    r16 d d'8 g,4
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key e \minor \time 2/4 \tempoMarkup "Andante"
    e4\p fis
    g r8 e
    h'4 h,
    e r
    e fis
    g r8 g
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
