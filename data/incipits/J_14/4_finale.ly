\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key c \major \time 2/4 \tempoMarkup "Allegro"
    c'4 r
    d c
    d r
    f e
    R2*2
    r4 f8 e
    e4 d
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key c \major \time 2/4 \tempoMarkup "Allegro"
    e4 r
    g e
    g r
    d' c
    R2*2
    r4 d8 c
    c4 g
  }
}

Timpani = {
  \relative c {
    \clef bass
    \twofourtime \key c \major \time 2/4 \tempoMarkup "Allegro"
    c4 r
    g c
    g r
    c c
    R2*4
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key c \major \time 2/4 \tempoMarkup "Allegro"
    c'4 d
    \grace c8 h4 c
    r8 d a' g16 f
    f4 e
    r8 a-! cis,( d)
    r g-! h,( c)
    r g f' e
    e4 d
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key c \major \time 2/4 \tempoMarkup "Allegro"
    e4 a
    d, e
    g d'
    d c
    a r8 a
    g16 h c8 r g
    f16 h d4 c8
    c4 h
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key c \major \time 2/4 \tempoMarkup "Allegro"
    c4 f
    g c,
    h h'
    c c,
    f, f'
    e e,
    d c'
    g' g,
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
