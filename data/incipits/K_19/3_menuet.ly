\version "2.24.2"
\include "header.ly"

Flauto = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    c'4 e f
    g a( g)
    g c a
    \appoggiatura g4 f2 e4
    \tuplet 3/2 { c'8 h a } g4 fis
    g8 fis g4 d
    e8 c' \appoggiatura h4 a2
    g2.
  }
}

Cello = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    c2 d4
    e f e
    c a' f
    d h8 g h c
    a4 c d
    h2 g4
    c d fis
    g d g,
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    c4 r r
    c r r
    c r r
    d g, c
    a c d
    h2 g4
    c d d,
    g' d g,
  }
}

\score {
  <<
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = "fl"
        \Flauto
      }
      \new Staff {
        \set Staff.instrumentName = "vlc"
        \Cello
      }
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
  >>
}
