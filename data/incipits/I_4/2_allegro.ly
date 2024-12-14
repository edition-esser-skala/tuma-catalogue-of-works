\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \time 4/4 \tempoMarkup "Allegro mà non troppo" \newSpacingSection
    e2 c'
    a h
    g a %20
    fis4 g fis2\trill
    e8 g fis e d! fis d cis
    h8. a16 g8 a16 h cis8 e cis h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \time 4/4 \tempoMarkup "Allegro mà non troppo"
    r8 e g' fis e c a h16 c
    d8 fis d c h a g a16 h
    c8 e c h a g fis g16 a
    h8 cis16 dis e8 g, a fis h h,
    e e' d! cis h4 fis'~
    fis8 e16 dis e8 e, r g e'4~
  }
}

Continuo = {
  \relative c {
    \clef bass
    \time 4/4 \tempoMarkup "Allegro mà non troppo" R1*4
    r2 h
    g' e
  }
}

BassFigures = \figuremode {
  r1*5
  <7>4 <6> r2
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
