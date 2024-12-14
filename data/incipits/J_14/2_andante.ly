\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key f \major \time 2/4 \tempoMarkup "Andante"
    \partial 8 c'8\p \tuplet 3/2 8 { a16[ g f] } f-! f-! f( g) f( e)
    \grace e8 f4 r16 c' f c
    \grace c8 b4 r16 b g' b,
    \grace b8 a4 r16 c f c
    \grace c8 h4 r8 f'16 c
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key f \major \time 2/4 \tempoMarkup "Andante"
    \partial 8 c'8\p \tuplet 3/2 8 { a16[ g f] } f-! f-! f( g) f( e)
    \grace e8 f16 c' b c \grace b8 a4
    r16 g e g b,4
    r16 c c b \grace b8 a4
    r16 f' f e d c h8
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key f \major \time 2/4 \tempoMarkup "Andante"
    \partial 8 r8 f\p a, b c
    f16 a g a f8 a
    g c, e e
    f16 a a g f4
    r16 d d c h a g8
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
        \set Staff.instrumentName = "b"
        \Continuo
      }
    >>
  >>
}
