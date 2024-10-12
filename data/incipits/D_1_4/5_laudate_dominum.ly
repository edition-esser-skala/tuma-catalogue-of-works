\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/2 \tempoMarkup "A capella"
      \set Staff.timeSignatureFraction = 2/2
    R\breve*5
    a'1 a4 g a h
    c2 a h2. h4
    a2 d d cis4 h
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/2 \tempoMarkup "A capella"
      \set Staff.timeSignatureFraction = 2/2
    R\breve*3
    r1 d
    d4 c d e f2 d
    e2. e4 d2 f
    g e d1~
    d e
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/2 \tempoMarkup "A capella"
      \set Staff.timeSignatureFraction = 2/2
    R\breve*2
    a1 a4 g a h
    c2 a h2. h4
    a2 a1 f2
    e1 f
    e2 a1 g2~
    g f e1
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/2 \tempoMarkup "A capella"
      \set Staff.timeSignatureFraction = 2/2
    d1 d4 c d e
    f2 d e1
    d2 d1 c4 h
    a2 a'1 g2
    f2. e4 d1~
    d2 cis d1
    R\breve
    r1 a
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/2 \tempoMarkup "A capella"
      \set Staff.timeSignatureFraction = 2/2
    R\breve*5
    a'1 a4 g a h
    c2 a h2. h4
    a2 d1 cis4 h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/2 \tempoMarkup "A capella"
      \set Staff.timeSignatureFraction = 2/2
    R\breve*3
    r1 d
    d4 c d e f2 d
    e2. e4 d2 f
    g e d1~
    d e~
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/2 \autoBeamOff \tempoMarkup "A capella"
      \set Staff.timeSignatureFraction = 2/2
    R\breve*5
    a'1 a4 g a h
    c2 a h2. h4
    a2 d d cis4 h
  }
}

SopranoLyrics = \lyricmode {
  Lau -- da -- _ _ _
  _ te e -- um,
  o -- mnes po -- _ \hy
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/2 \autoBeamOff \tempoMarkup "A capella"
      \set Staff.timeSignatureFraction = 2/2
    R\breve*3
    r1 d
    d4 c d e f2 d
    e2. e4 d2 f
    g e d1~
    d e
  }
}

AltoLyrics = \lyricmode {
  Lau --
  da -- _ _ _ _ te
  e -- um, o -- mnes
  po -- pu -- li, __
  "po -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/2 \autoBeamOff \tempoMarkup "A capella"
      \set Staff.timeSignatureFraction = 2/2
    R\breve*2
    a1 a4 g a h
    c2 a h2. h4
    a2 a1 f2
    e1 f
    e2 a1 g2~
    g f e1
  }
}

TenoreLyrics = \lyricmode {
  Lau -- da -- _ _ _
  _ te Do -- mi --
  num, o -- mnes
  gen -- _
  _ _ _
  _ tes.
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/2 \autoBeamOff \tempoMarkup "A capella"
      \set Staff.timeSignatureFraction = 2/2
    d1 d4 c d e
    f2 d e2. e4
    d2 d1 c4 h
    a2 a'1 g2
    f2. e4 d1~
    d2 cis d1
    R\breve
    r1 a
  }
}

BassoLyrics = \lyricmode {
  Lau -- da -- _ _ _
  _ te Do -- mi --
  num, o -- mnes _
  gen -- _ _
  _ _ _
  _ tes.

  "Quo -"
}

Organo = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/2 \tempoMarkup "A capella"
      \set Staff.timeSignatureFraction = 2/2
    d1-! d4-! c-! d-! e-!
    f2-! d-! e1-!
    d2 d1 c4 h
    a2 a'1 g2
    f2. e4 d1~
    d2 cis d1
    \clef tenor e2 a1 g2~
    g f \clef bass a,1
  }
}

BassFigures = \figuremode {
  r\breve
  r
  <5>2 <\t>1 <6>4 <8>
  <10>2 <5> <4 2> <5>
  <6>\breve
  <5 2>2 <6>1.
  r1 <4 2>2 <5>
  <5 2> <6> <4>1
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
