\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Allegro assai"
    g''4 g, r8 g g g
    g4 g, r8 g' g g
    g, h' h h g, d'' d d
    g,, g'' g g fis16 g a g fis e d c
    h8 g' g g fis16 g a g fis e d c
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Allegro assai"
    g''4 g, r8 g g g
    g4 g, r8 g' g g
    g, h' h h g, d'' d d
    g,, g'' g g fis16 g a g fis e d c
    h8 g' g g fis16 g a g fis e d c
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \tempoMarkup "Allegro assai"
    r16 h' a g fis e d c h8 h h h
    d d d d r16 g fis e d c h a
    g g' fis e d c h a g g' fis e d c h a
    g4 d'8 e a, fis'16 g a g fis e
    d4 d8 e a, fis'16 g a g fis e
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Allegro assai"
    r16 g' fis e d c h a g8 g g g
    h h h h h h h h
    h g r4 g r
    g h8 c d4 fis
    g h,8 c d4 fis
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
        \set Staff.instrumentName = "vla"
        \Viola
      }
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
  >>
}
