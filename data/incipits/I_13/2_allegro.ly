\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \minor \time 4/4 \tempoMarkup "Allegro"
    d'8\f e f4. g8 e4
    c8 d es4. f8 d4
    b8 c d4. e8 cis4
    c8 d h4. c8 a4~
    a8 h gis4 g8 a f g
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \minor \time 4/4 \tempoMarkup "Allegro"
    R1*5
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \tempoMarkup "Allegro"
    r4 d'8\f c!16 b a8 h c c,
    r4 c'8 b16 a g8 a b b,
    r4 b'8 a16 g f8 g a a,
    r fis' g g, r e' f f,
    r d' e e, r cis' d e
  }
}

BassFigures = \figuremode {
  r4 <3>8. \once \bassFigureExtendersOn q16 <6>8 q4.
  r4 <_->8. \once \bassFigureExtendersOn q16 <6->8 <6>4.
  r4 <3>8. \once \bassFigureExtendersOn q16 <6>8 <6!> <_+>4
  r8 <6> <_!>4. <6>
  r8 <6!> <_+>4. <6>4 <6\\>8
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
