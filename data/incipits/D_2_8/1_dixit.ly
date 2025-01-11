\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4
    c'4 h c8. c16 c4
    c8 c16 c c8 h c4 r
    r8 d c h e e d4
    d r r d8 d
    d, d d' d d d c4
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4
    g'4-\tutti g e8. e16 e4
    a8 g f4 e8 g4 g8
    g4 g8 g g g g fis
    g4 r r h8 h
    h, h h' h h4 a
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4
    e4-\tutti d c8. c16 g4
    c8 c16 c d4 e r
    r8 h c d c c a4
    h r r g8 g
    g g h c16 d e4 e
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key c \major \time 4/4
    c'4 g a e
    f8 e d4 c r
    r8 h a g c4 d
    g, h'8 h h,2
    h4 h8 a gis4 a
  }
}

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4
    g''4 g e8. e16 e4
    a8 g f4 e r
    r r8 g g g g fis
    g4 r r2
    R1
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4
    c'4 d c8. c16 c4
    c8 c d4 g, r
    r r8 d' e e d4
    d r r2
    R1
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4
    c8 c16 c g8 g16 g c4 r8 c
    c c r g16 g c4 r
    r r8 g c4 r
    g r r2
    R1
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4
    c'4 h c8. c16 c4
    c c8 h c g4 g8
    g d' c h e e d4
    d r r d8 d
    d,4 d'8 d d4 c
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4
    g'4 g e8. e16 e4
    a8 g f4 g8 g4 g8
    g4 g8 g g4 g8 fis
    g4 r r h8 h
    h,4 h'8 h h4 a
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff
    c'4^\tutti h c8. c16 c4
    c8 c16 c c8([ h)] c4 r
    r8 d c h e e d4
    d r r d8 d
    d, d d' d d d c4
  }
}

SopranoLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus
  Do -- mi -- no me -- o:
  Se -- de a dex -- tris me --
  is, do -- nec
  po -- nam in -- i -- mi -- cos "tu -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff
    g'4^\tutti g e8. e16 e4
    a8 g16 g f4 e8 g4 g8
    g4 g8 g g g g[ fis]
    g4 r r h8 h
    h, h h' h h4 a
  }
}

AltoLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus
  Do -- mi -- no me -- o: Se -- de,
  se -- de a dex -- tris me --
  is, do -- nec
  po -- nam in -- i -- mi -- cos
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff
    e4 d c8. c16 g4
    c8 c16 c d4 e r
    r8 h c d c c a4
    h r r g8 g
    g g h c16[ d] e4 e
  }
}

TenoreLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus
  Do -- mi -- no me -- o:
  Se -- de a dex -- tris me --
  is, do -- nec
  po -- nam in -- i -- mi -- cos
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff
    c'4^\tutti g a8. a16 e4
    f8 e16 e d4 c r
    r8 h a g c c d4
    g, h'8 h h,2
    h4 h8 a gis4 a
  }
}

BassoLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus
  Do -- mi -- no me -- o:
  Se -- de a dex -- tris me --
  is, do -- nec po --
  nam in -- i -- mi -- cos
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4
    c'4-\tutti g a e
    f8 e d4 c r
    r8 h a g c4 d
    g, h'8-! h-! h,2-!
    h4 h8 a gis4 a
  }
}

BassFigures = \figuremode {
  r2. <6>4
  r4 <7>8 <6> r2
  r2. <4>8 <_+>
  r2. <6>4
  <\t>2 <6>
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
    >>
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
    >>
    \new Staff {
      \set Staff.instrumentName = "timp"
      \Timpani
    }
    \new StaffGroup <<
      \new GrandStaff <<
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
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
