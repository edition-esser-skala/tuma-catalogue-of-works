\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Allegro"
    d'4. d8 a'4. a8
    d d, r d' cis fis, r h
    a d, g4 \grace g16 fis8 e16 d e4\trill
    d8 a(\p h a) r a( h a)
    r g( a g) r g( a g)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Allegro"
    d'4. d8 a'4. a8
    d d, r d' cis fis, r h
    a d, g4 \grace g16 fis8 e16 d e4\trill
    d8 fis,(\p g\trill fis) r fis( g\trill fis)
    r e( fis\trill e) r e( fis\trill e)
  }
}

Viola = {
  \relative c' {
    \clef alto
     \key d \major \time 4/4 \tempoMarkup "Allegro"
    r8 fis e d cis4 d8 e
    fis4. h8 h ais h g~
    g fis d e a, d4 cis8
    d4 r d\p r
    h r cis r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "Allegro"
    r8 d'-! cis-! h-! a-! g-! fis-! e-!
    d4 h fis' g
    d h8 cis d h' g a
    d,4 r d\p r
    e r a, r
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
        \set Staff.instrumentName = "vla"
        \Viola
      }
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
  >>
}
