\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key f \major \time 2/4 \tempoMarkup "Allegro"
    \partial 8 f8 a[ c f a]
    c4. f,8
    e16( g f8) r f,
    e16( g f8) r c'
    d16( es c8) d16( \hA es c8)
    d4. d8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key f \major \time 2/4 \tempoMarkup "Allegro"
    \partial 8 r8 f4 r8 a
    a4. a8
    g a r4
    r8 c, d16 e f8
    f4 r
    f8 b d g
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key f \major \time 2/4 \tempoMarkup "Allegro"
    \partial 8 r8 f,4 r8 f'
    f, a c f
    c' a b a
    r a b a
    b4 r
    b, h8 h
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
