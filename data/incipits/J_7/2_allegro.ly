\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Allegro"
    \partial 8 r8 R1*3
    r2 r4 r8 d'
    a' a a d, a'4. fis16 gis
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Allegro"
    \partial 8 d8 a' a a d, a'4. h16 cis
    d a a4 h16 cis d a a4 h16 cis
    d8 cis16 h a8 g fis16 e fis d g fis g e
    fis e fis d g fis g e fis e fis e d fis e d
    cis h a8 r4 r8 e'' a,16 gis a8
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "Allegro"
    \partial 8 r8 d e fis g fis d16 e fis8 g
    fis d16 e fis8 g fis d16 e fis8 g
    fis4 cis d8 fis h, cis
    d fis h, cis d cis h4
    a h cis8 a16 h cis8 d
  }
}

BassFigures = \figuremode {
  r8 r2 <6>
  q q
  q4 q8 <5> r4 <6>8 <6 5>
  r4 <6>8 <6 5>4 <6>4.
  r4 <7> <6>2
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
