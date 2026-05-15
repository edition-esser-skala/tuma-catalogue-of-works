\version "2.24.2"
\include "header.ly"

Flauto = {
  \relative c' {
    \clef treble
    \twotwotime \key c \major \time 2/2 \tempoMarkup "[no tempo]"
    g'2 e'~
    e4 d8 c d2
    g, f'~
    f4 e8 d e2
    a4 a~ a8 h c a
    g4 g~ g8 h c g
    f2 e
    e4 d r g
  }
}

Cello = {
  \relative c {
    \clef bass
    \twotwotime \key c \major \time 2/2 \tempoMarkup "[no tempo]"
    c4 e g c
    c h8 a h2
    g,4 g' h d
    d c8 h c2
    f,4 a c f,
    e g c e,
    d g c c
    c h g h
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twotwotime \key c \major \time 2/2 \tempoMarkup "[no tempo]"
    c2 c
    g'2. g4
    g,2 g'
    g c,
    f f
    e e
    d4 g c fis,
    g2. h4
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
