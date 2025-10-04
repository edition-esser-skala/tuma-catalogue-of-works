\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key b \major \time 3/8 \tempoMarkup "Allegro"
    b'8 b4
    f'8 f4
    b16 a b c d8
    c4.
    g16 f g a b8
    \appoggiatura g f4.
    es16 d c g' f es
    d c b4
    d16 c d es f8
    f, f4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key b \major \time 3/8 \tempoMarkup "Allegro"
    R4.*2
    b'8 b4
    a8 a4
    es'16 d es f g8
    b, b4
    g8 a4
    f4.
    f4 f8
    c4 r8
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key b \major \time 3/8 \tempoMarkup "Allegro"
    r8 b' b
    r a a
    r d, b
    f' es d
    r es es
    d c b
    c a4
    b8 b' f
    b,4 r8
    a'16 g a b c8
  }
}

BassFigures = \figuremode {
  % tacet
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
    \new FiguredBass { \BassFigures }
  >>
}
