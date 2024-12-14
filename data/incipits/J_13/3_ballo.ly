\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 3/4 \tempoMarkup "Ballo"
      \once \override Staff.TimeSignature.style = #'single-digit
    g'4 g g
    as8 f g2
    f8 as g f es d
    es d c2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 3/4 \tempoMarkup "Ballo"
      \once \override Staff.TimeSignature.style = #'single-digit
    g'4 g g
    as8 f g2
    f8 as g f es d
    es d c2
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \dorian \time 3/4 \tempoMarkup "Ballo"
      \once \override Staff.TimeSignature.style = #'single-digit
    r4 c es
    f es c
    r h g
    c es8 d c4
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
