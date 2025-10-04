\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    r2 \pa c16. c32 e16. c32 e16. e32 g16. g32 \pd
    c4 r e,16. e32 g16. e32 g16. g32 c16. c32
    e4 r c16. c32 e16. c32 c16. c32 g16. g32
    e4 r r2
    R1
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    r2 c16. c32 e16. c32 e16. e32 e16. e32
    e4 r c16. c32 e16. c32 e16. e32 g16. g32
    c4 r e,16. e32 g16. e32 e16. e32 c16. c32
    c4 r r2
    R1
  }
}

TrombaI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    r2 g'8 g16 g g8 g
    g4 r g8 g16 g g8 g
    g4 r g8 g16 g g8 g
    g4 r r2
    R1
  }
}

TrombaII = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    r2 c8 c16 c c8 c
    c4 r c8 c16 c c8 c
    c4 r c8 c16 c c8 c
    c4 r r2
    R1
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    r2 c8 c16 c c8 c
    c4 r c8 c16 c c8 c
    c4 r c8 c16 c c8 c
    c4 r r2
    R1
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    c'8. \tuplet 3/2 16 { g32 a h } c16. c32 e16. e32 c4 r
    e8. \tuplet 3/2 16 { c32 d e } e16. e32 g16. g32 e4 r
    g8. \tuplet 3/2 16 { e32 f g } g16. g32 c16. c32 c,4 r
    g'16( f) g8~ g16 c, e c g' f g8~ g16 h, d h
    g' fis g8~ g16 a, c a h8 d16 h g4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    e4 e16. e32 g16. g32 e4 r
    g c16. c32 e16. e32 c4 r
    c e16. e32 c16. c32 c4 r
    r16 c e g e,4 r16 h' d g g,4
    r16 e' c h c4 g r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    c8 c c c c4 r
    c8 c c c c4 r
    c'8 c c c c,4 r
    c8 c c c h h h h
    a a a a g a16 h c d e fis
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
