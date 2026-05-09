\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key g \minor \time 2/4 \tempoMarkup "Allegretto"
    \partial 4 r8 d'16 b'
    \tuplet 3/2 { a8 g fis } r g
    \tuplet 3/2 { es d c } r c16 f
    \tuplet 3/2 { d8 c b } r es
    \tuplet 3/2 { c b a } r a16 d
    \tuplet 3/2 { b8 a g } d'4
    \tuplet 3/2 { b8 a g } d'4
    g,16( fis g) c-! c es es g,
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key g \minor \time 2/4 \tempoMarkup "Allegretto"
    \partial 4 r8 b'
    d a d4~
    d8 g, c4~
    c8 f, b4~
    b8 e, a4
    d, r16 a' b c
    b4 r16 a b c
    b4 g
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key g \minor \time 2/4 \tempoMarkup "Allegretto"
    \partial 4 r8 g
    d'4 h
    c a
    b g
    a fis
    g fis
    g fis
    g'8 f es4
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
