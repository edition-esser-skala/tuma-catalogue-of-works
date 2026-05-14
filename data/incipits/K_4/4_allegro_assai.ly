\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key g \major \time 2/4 \tempoMarkup "Allegro assai"
    g''8 g, \grace h a4
    h r8 d
    e g \grace g fis4
    g r8 d
    e d \grace d c4
    h r8 a
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key g \major \time 2/4 \tempoMarkup "Allegro assai"
    R2
    r16 g h d g4
    R2
    r16 g h d g4
    R2
    r16 g,, h d g8 d
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key g \major \time 2/4 \tempoMarkup "Allegro assai"
    g8 g'4 fis8
    g4. h8
    c h a d
    g,4 r8 h
    c h e, fis
    g4 r8 fis
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
