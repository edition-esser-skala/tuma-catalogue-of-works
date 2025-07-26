\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "Menuet · [no tempo]"
    c8 c e e g4
    c,8 c e e g4
    R2.
    g4 e r
    R2.*2
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "Menuet · [no tempo]"
    c8 c e e g4
    c,8 c e e g4
    R2.
    g4 e r
    R2.*2
  }
}

TrombaI = {
  \relative c' {
    \clef alto
    \key c \major \time 3/4 \tempoMarkup "Menuet · [no tempo]"
    g'4 g g
    g g8 g g4
    R2.
    g4 g r
    R2.*2
  }
}

TrombaII = {
  \relative c' {
    \clef alto
    \key c \major \time 3/4 \tempoMarkup "Menuet · [no tempo]"
    c4 c8 c c4
    c c8 c c4
    R2.
    g4 c r
    R2.*2
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \tempoMarkup "Menuet · [no tempo]"
    c4 c8 c c4
    c c8 c c4
    R2.
    g4 c r
    R2.*2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "Menuet · [no tempo]"
    e'8( f) g2
    e8( f) g2
    f4 d c
    h c r
    f e r
    d c r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "Menuet · [no tempo]"
    e'8( f) g2
    e8( f) g2
    f4 d c
    h c r
    f e r
    d c r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \tempoMarkup "Menuet · [no tempo]"
    c4 c' c,
    c c' c,
    d f2
    g4 c, r
    a' g r
    f e r
  }
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { \transposedNameShort "clno" "C" "" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { \transposedNameShort "tr" "C" "" "1, 2" }
        \partCombine #'(0 . 10) \TrombaI \TrombaII
      >>
    >>
    \new Staff {
      \set Staff.instrumentName = \transposedTimpShort "C" "" "G" ""
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
