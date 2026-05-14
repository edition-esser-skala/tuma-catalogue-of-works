\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key es \major \time 2/4 \tempoMarkup "Allegro"
    \partial 8 b'8 d es r as,
    \appoggiatura as g4 r8 b
    c es r as
    \appoggiatura as g4 r8 f
    g b r es,
    \appoggiatura es d4 r8 d
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key es \major \time 2/4 \tempoMarkup "Allegro"
    \partial 8 r8 es'4 d
    es2~
    es4 d
    es b'~
    b a
    b b,
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key es \major \time 2/4 \tempoMarkup "Allegro"
    \partial 8 es8 as4 f
    es g
    as f
    es d
    es c
    b d
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
