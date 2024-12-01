\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 2/4 \tempoMarkup "[no tempo]"
    \partial 8 r8 R2*7
    r8 a''16 cis, h gis'( fis gis)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 2/4 \tempoMarkup "[no tempo]"
    \partial 8 a'8 d( cis) r a
    fis'( e) r d
    \grace c?16 h8 a16 h g8 a
    fis d fis' gis
    a a, fis gis
    a a, fis'' gis
    a a,16 e h'4\trill
    a8 a4 gis8~
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \major \time 2/4 \tempoMarkup "[no tempo]"
    \partial 8 r8  r a' fis d
    r a'16 g fis8 fis
    g4 h,8 cis
    d4 r8 d'
    cis4 r8 d,
    cis4 r8 d'
    d cis d e
    a, a, e'4
  }
}

BassFigures = \figuremode {
  r8 r4 <6>
  r q
  r q8 q
  r4. <4\+>8
  <6>4. <4\+>8
  <6>4. <4\+>8
  <5> <6> <6> <_+>
  r4 <4>8 <_+>
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
