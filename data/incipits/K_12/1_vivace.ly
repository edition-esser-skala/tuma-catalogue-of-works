\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key b \major \time 3/8 \tempoMarkup "Vivace"
    \partial 8 r16 b'' b,8 b,8. b''16
    b,8 b,8. f''16
    \appoggiatura f8 g a,8. es'16
    \appoggiatura es8 d4 r16 f,
    \tuplet 3/2 8 { g16 a b } c,8.[ a'16]
    \appoggiatura a8 b4 r16 d
    d8( c) r16 es
    es8( d) r16 f
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key b \major \time 3/8 \tempoMarkup "Vivace"
    \partial 8 r16 b'' b,8 b,8. b''16
    b,8 b,8. f''16
    \appoggiatura f8 g a,8. es'16
    \appoggiatura es8 d4 r16 f,
    \tuplet 3/2 8 { g16 a b } c,8.[ a'16]
    \appoggiatura a8 b4 r16 b
    b8( a) r16 c
    c8( b) r16 b
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key b \major \time 3/8 \tempoMarkup "Vivace"
    \partial 8 r8 b d es
    d b d
    es f f,
    b d b
    es es f
    b, d b
    f' f, a
    b b16 c d8
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
