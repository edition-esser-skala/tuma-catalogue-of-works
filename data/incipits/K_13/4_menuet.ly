\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key es \lydian \time 3/4 \tempoMarkup "Menuet"
    es'4 b c
    g4. as8 b4
    es, c'8 b as g
    f4 b,2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key es \lydian \time 3/4 \tempoMarkup "Menuet"
    es'4 b c
    g4. as8 b4
    es, c'8 b as g
    f4 b,2
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key es \lydian \time 3/4 \tempoMarkup "Menuet"
    es2 r4
    es' b g
    c f,2
    d8 es d c b4
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
