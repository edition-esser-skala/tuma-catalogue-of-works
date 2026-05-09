\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twotwotime \key b \major \time 2/2 \tempoMarkup "Boure"
    \partial 4 b''4 d,8( c) b4 f es'
    \appoggiatura es8 d2 r8 f, g f
    g2. es'4
    d2~ d8 f, g f
    g2. es'4
    d2~ d8 f g f
    g es d c f d c b
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twotwotime \key b \major \time 2/2 \tempoMarkup "Boure"
    \partial 4 r4 f2. a4
    b a'8( b) b,2
    r4 b es, c
    d a''8( b) b,2
    r4 b es, c
    d a''8( b) b,2~
    b1
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twotwotime \key b \major \time 2/2 \tempoMarkup "Boure"
    \partial 4 r4 b d f f,
    b c d b
    es d c f
    b, c d b
    es d c f
    b, c d b
    es2 d
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
