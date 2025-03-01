\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 3/4 \tempoMarkup "Adagio"
    R2.
    b''4 as8 g f es
    d4. b8 es4~
    es8 f \grace es d2
    es8 b b b c b
    r as as as b \hA as
    r g g g as g
    f4 f' d
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 3/4 \tempoMarkup "Adagio"
    es'4 d8 c b as
    g4 es c'~
    c b8 as g4~
    g8 as f2
    es8 g g g as g
    r f f f g f
    r es es es f es
    d4 r b'
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \dorian \time 3/4 \tempoMarkup "Adagio"
    es4 f d
    es c as
    b2 c4
    as' b b,
    es2 es4
    f r b,
    c r as
    b8 b' d, b' b, b'
  }
}

BassFigures = \figuremode {
  r4 <6> <6>
  r <6->2
  <9>2.
  r4 <4>4 <3>
  r2.
  <_->
  <5>
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
