\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Moderato"
    r8 c' h8. h16 c4 r8 g
    e4 a8 a h! h a8. a16
    a8 d4 f8 h, h h h
    c c c h c4 r
    R1*2
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Moderato"
    r8 g' g8. g16 g8 c, g'4~
    g f8 f f f e8. e16
    d4 r r8 g!4 g8
    g g g4 g8 r r4
    R1*2
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Moderato"
    r8 e d8. d16 e4 r8 d
    cis4 d8 d d d cis8. cis16
    d4 r r8 d4 d8
    e e d4 e r
    R1*2
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Moderato"
    r8 c' g4 c, r8 b
    a2 gis4 a
    d r r8 g!4 f8
    e c g' g, c4 r
    R1*2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Moderato"
    r8 c' h8. h16 c8 c, g'4~
    g f2 e4
    d8 d'4 f8 h,4 h
    c8 c4 h8 c4 r
    R1*2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Moderato"
    r8 g' g4 g r8 d
    cis4 d2 cis4
    d8 d'4 f8 h,2
    c8 c4 h8 c4 r
    R1*2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
    r8 c'^\tutti h8. h16 c4 r8 g
    e4 a8 a h! h a8. a16
    a8 d4 f8 h, h h h
    c c c[ h] c4 r
    r4 g8^\solo g g g fis g16[ a]
    h4 g8 g fis4 fis8 fis
  }
}

SopranoLyrics = \lyricmode {
  Be -- a -- tus vir qui
  ti -- met, qui ti -- met Do -- mi --
  num: In man -- da -- tis e -- ius
  vo -- let ni -- mis.
  Ge -- ne -- ra -- ti -- o re --
  cto -- rum, re -- cto -- rum "be -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
    r8 g'^\tutti g8. g16 g8 c, g'4~
    g f8 f f f e8. e16
    d4 r r8 g!4 g8
    g g g4 g8 g^\solo e d16[ c]
    g'[ f] g8 d g e d c4
    d r r2
  }
}

AltoLyrics = \lyricmode {
  Be -- a -- tus vir qui ti --
  met, qui ti -- met Do -- mi --
  num: E -- ius
  vo -- let ni -- mis. Po -- tens in
  ter -- ra e -- rit se -- men e --
  ius:
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
    r8 e^\tutti d8. d16 e4 r8 d
    cis4 d8 d d d cis8. cis16
    d4 r r8 d4 d8
    e e d4 e r
    r2 r4 c8.^\solo c16
    h4 d8 c16[ h] a8. a16 a8 a
  }
}

TenoreLyrics = \lyricmode {
  Be -- a -- tus vir qui
  ti -- met, qui ti -- met Do -- mi --
  num: E -- ius
  vo -- let ni -- mis.
  Glo -- ri --
  a et di -- vi -- ti -- ae in
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
    r8 c'^\tutti g8. g16 c,4 r8 b
    a2 gis4 a8. a16
    d4 r r8 g!4 f8
    e c g'[ g,] c4 r
    R1*2 %6
  }
}

BassoLyrics = \lyricmode {
  Be -- a -- tus vir qui
  ti -- met Do -- mi --
  num: E -- ius
  vo -- let ni -- mis.
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Moderato"
    r8 c' g4 c, r8 b
    a2 gis4 a
    d r r8 g!4 f8
    e c g' g, c4 r8 c-\solo
    h2 c8 h a4
    g8 a h g d' e fis d
  }
}

BassFigures = \figuremode {
  r2.. <6>8
  <7 _+>4 <6 4>2.
  r1
  r
  <6>2 r4 <6\\>
  r2 <_+>
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
