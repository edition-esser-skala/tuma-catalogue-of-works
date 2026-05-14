\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \dorian \time 3/4 \tempoMarkup "Largo"
    \partial 4 f4 \appoggiatura f e2 as4
    \appoggiatura as g2 c4~
    c8 des c b as g
    as g f4 r
    h h h
    c c, r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \dorian \time 3/4 \tempoMarkup "Largo"
    \partial 4 r4
    r r f
    \appoggiatura f e2 f4~
    f2 e4
    f2 r4
    f f f
    e2 r4
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \dorian \time 3/4 \tempoMarkup "Largo"
    \partial 4 f,4 c'2 f,4
    c'2 as4
    b2 c4
    f,2 r4
    des' des des
    c2 r4
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
