\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "Allegro"
    a'4 h8. a32 h cis8 a16 cis e8 fis16 gis
    a8 e16 cis d8 h16 gis a4 cis8 d
    e cis16 a gis8 a h gis16 e cis'8 d
    e cis16 a gis8. a16 h4 r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "Allegro"
    a'4 e e r8 d'
    cis4 h,8 h cis a r e'
    e4 d'8 cis h4 r8 e,
    e4 d'8 fis, e4 r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \tempoMarkup "Allegro"
    a'4 gis a cis,8 h
    a cis d e a, a'16 gis a8 h,
    cis a h' a gis e a h,
    cis a h' a gis e16 fis gis8 e
  }
}

BassFigures = \figuremode {
  r4 <6>2 q8 q
  r4 q2 r8 q
  r4 <6> r4. <6>8
  r4 <6>8 r r2
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
