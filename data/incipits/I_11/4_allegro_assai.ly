\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 2/2 \tempoMarkup "Allegro assai"
    d'2 f4 a
    d2 d,
    e4 b'( a g)
    f( e d) d,
    e b'( a g)
    f e d2
    a''4 d d,2
    d1
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 2/2 \tempoMarkup "Allegro assai"
    f'2. e4
    d2 d~
    d cis
    d d,~
    d cis
    d1
    f'2 a
    b,4( d) g,2
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \dorian \time 2/2 \tempoMarkup "Allegro assai"
    d'2 c
    b f
    g a
    d, f,
    g a
    d,1
    d'2 f
    g b,
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
