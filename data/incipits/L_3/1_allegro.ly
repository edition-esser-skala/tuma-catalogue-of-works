\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Allegro"
    c'2 as'8 f, as f
    b2 g'8 es, g es
    as2 f'8 d, f d
    g2 es'16 d c h c8 as'
    es4 d c16 h c d es d es f
    g4 r r8 es16 d c d es8
    r a,!16 g f g a8 r d16 c b c d8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Allegro"
    r2 f
    d'8 b, d b es2
    c'8 as, c \hA as d2
    h'8 g, h g c d es f
    g4 g, c r
    g'2 es'8 c, es c
    f2 d'8 b, d b
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Allegro"
    R1*5
    r2 c
    a'8 f, a f b2
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
