\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \major \time 6/8 \tempoMarkup "Andante"
    \partial 8 c'8 d8. f16 e8 f( a) f,
    g( a) b-! a( g16 f) c'8
    d8. f16 e8 f( a) g,
    a16 h \appoggiatura c8 h4 c c8
    d8. f16 e8 f( a) f,
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \major \time 6/8 \tempoMarkup "Andante"
    \partial 8 a'8 b4( g8) a4 f8~
    f4 e8( f4) a8(
    b4) g8 a4 c,8
    f \appoggiatura e d4 e a8
    b4 g8 a4 f8
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key f \major \time 6/8 \tempoMarkup "Andante"
    \partial 8 f,8 f4.~ f4 a8
    b4 c8 f,4 f8
    f4. f4 e'8
    f4 g8 c,4 f,8
    f4.~ f4 a8
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
