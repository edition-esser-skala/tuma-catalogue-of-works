\version "2.24.2"
\include "header.ly"

Flauto = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Un poco andante"
    \partial 8 e'8 a c,16 d e8 f e16 a e c a8 f'
    e16 e d c d d c h c h a8 r e'
    f16 f8 f16 f8 e16 d e f g4 g,8
    a a'16 g f e d c h d g,4 f'8
    e g4 h,8 c g'4 h,8
  }
}

Cello = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Un poco andante"
    \partial 8 r8 a' a16 h c8 d c a a, d'
    c16 c h a h h a gis a e a, h c8 c'
    d16 d8 d16 d8 c16 h c d e4 e,8
    f f'16 e d c h a g8 h16 c d8 d
    c e4 d,8 e e'4 d,8
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Un poco andante"
    \partial 8 r8 a'4 r8 d, c a r d
    a r e' r a,4 r8 a'
    d,4 g c, r8 c
    f4 r8 f g4 h8 g
    c c, c g' c c, c g'
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
