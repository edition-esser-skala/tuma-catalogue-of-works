\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Allegro"
    r2 d'~
    d4 c2 h4
    c r as'2
    h,8 g c2 h4
    c16 g' d g es g c, g' f g es f d es f g
    es8 d c2 h4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Allegro"
    r4 c'2 h4
    es2 d
    c4 g'2 f4~
    f es d2
    c4 r r2
    c16 g' d g es g c, g' f g es f d es f g
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Allegro"
    c8 d es c f d g g,
    c d es c f d g g,
    c d es c f g as f
    g h c es, f d g g,
    c4 c'2 h4
    c r8 es, d4 g,
  }
}

BassFigures = \figuremode {
  r2 <6 5>
  <9> <6 5>4 <_!>
  r2 <9>
  <7>8 <6>4. <6 5>4 <_!>
  r2 <2>
  r4. <6>8 <7>4 <_!>
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
