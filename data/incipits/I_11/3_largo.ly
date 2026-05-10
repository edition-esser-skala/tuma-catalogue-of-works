\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \major \time 3/2 \tempoMarkup "Largo"
    R1.*3
    c'2 a'4( f) d( c)
    h g \hA h( c d e)
    f g8 a \appoggiatura a g2.\trill f4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \major \time 3/2 \tempoMarkup "Largo"
    f2 c'4( a) g( f)
    e c e( f g a)
    b c8( d) \appoggiatura d c2. b4
    \tuplet 3/2 { a g f } \appoggiatura g8 f1
    r2 d g
    f \appoggiatura e8 d1
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \major \time 3/2 \tempoMarkup "Largo"
    f2 a b
    c c, e
    g e c
    f1.
    g2 g, h
    d h g
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
