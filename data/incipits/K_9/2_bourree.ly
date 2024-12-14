\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key a \major \time 2/4 \tempoMarkup "[no tempo]"
    \partial 8 a'16 gis a8 a, r h'16 a
    h8 e, r cis'16 h
    cis8 a gis a
    h4 r8 cis16 h
    cis8 a gis a
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key a \major \time 2/4 \tempoMarkup "[no tempo]"
    \partial 8 cis16 h cis8 cis a gis'16 fis
    gis8 gis e a16 gis
    a8 cis h a
    gis16 a h8 e,4
    a8 cis h a
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key a \major \time 2/4 \tempoMarkup "[no tempo]"
    \partial 8 r8 r a'16 gis a8 d,
    e gis16 fis gis8 e
    a4 r
    r8 gis16 fis gis8 e
    a4 r
  }
}

BassFigures = \figuremode {
  r8 r4. <6>8
  r4. <7>8
  r2
  r
  r
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
