\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 3/4 \tempoMarkup "Allegro"
    \partial 4 g''4 g, \grace h8 a4.\trill g16 a
    h4 g g,
    a'8 h c h c d
    \grace c4 h2 g'4
    a,8 h c h c d
    \grace c4 h2 d4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 3/4 \tempoMarkup "Allegro"
    \partial 4 r4 g' g fis
    g2.~
    g4 fis2
    r4 g' g,~
    g fis2
    r4 g' d
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key g \major \time 3/4 \tempoMarkup "Allegro"
    \partial 4 r4 g d' d,
    g2 r4
    d'2 d,4
    g h g
    d'2 fis,4
    g2 h4
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
