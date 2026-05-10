\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Adagio"
    r2 e'~
    e16 d a16. g32 f16. d32 f'16. d32 g2~
    g16 f c16. b32 a16. f32 a'16. f32 b2~
    b16 g a b g4\trill f16 a, b a g8 f
    \appoggiatura g16 f8 e r4 d8 d'16 c b8 a16 g
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Adagio"
    d'2~ d16 cis a16. e32 cis16. a32 e''16. cis32
    f2~ f16 e c16. g32 e16. c32 g''16. e32
    a2~ a8 g16 f g8 b
    e, f4 e d8 b d,
    \appoggiatura e16 d8\trill cis r4 b'8 b,16 c d e f g
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "Adagio"
    d8 e f d a' a, a' cis,
    d e f d e f g e
    f g a f g a b g
    c f, c' c, d4 g8 gis
    a a,16 h cis d e f g2
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
