\version "2.24.2"
\include "header.ly"

Flauto = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Vivace"
    g''4~ g16 c a f g8 c,~ c16 c' a f
    g f e g f e d f e8 c r d
    e16( d) d( c) c8 d16 e d( c) c( h) h8 c16( d)
    c( h) h( a) a8 h16 c h a' g8~ g16 f e d
    e d' c8~ c16 b a g a( g) g( f) f8 e
  }
}

Cello = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Vivace"
    c8 d e f e d c f
    e c' d, h' c, e16 d c8 h'
    c16( h) h( a) a8 h16 c h( a) a( g) g8 a16( h)
    a( g) g( fis) fis8 g16 a g8 h16 d h8 g
    \clef tenor c e16 g e8 c f16 e e d d8 c
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Vivace"
    c8 d e f e d c f
    e4 h c r8 h
    c4 fis h, e
    a, d g r8 h,
    c4 r8 e f4 r8 fis
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
