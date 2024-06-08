\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c'4 r r2
    R1
    \pao c,4 r \pao c r
    \pao c r r8 \pa c c c
    d'4 \pd r r2
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    e4 r r2
    R1
    c4 r c r
    c r r8 c c c
    d'4 r r2
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c4 r r2
    R1
    c4 r r2
    c4 r r2
    R1
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    r8 c''-! g-! e-! c-! g'-! e-! c-!
    g-! e'-! c-! g-! e-! g-! e-! c-!
    b4 r r8 c'(\p b a)
    r b( a g) a4 r
    r8 d'\f-! a-! fis-! d-! a'-! fis-! d-!
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    r2 r8 c''-! g-! e-!
    c-! g'-! e-! c-! g-! e'-! c-! g-!
    e4 r r8 a(\p g f)
    r g( f e) f4 r
    r2 r8 d''-!\f a-! fis-!
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c4 r r2
    R1
    c4 r f\p r
    c r f8 a16 g f8 e
    d4 r r2
  }
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
    >>
    \new Staff {
      \set Staff.instrumentName = "timp"
      \Timpani
    }
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
        \set Staff.instrumentName = "b"
        \Continuo
      }
    >>
  >>
}
