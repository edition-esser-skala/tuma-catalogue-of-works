\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key b \major \time 4/4 \tempoMarkup "Vivace"
    R1*2
    r2 r4 r8 b'
    b4 b8 b b b a8. a16
    b4 r r2
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key b \major \time 4/4 \tempoMarkup "Vivace"
    R1*2
    r2 r4 r8 f
    f4 f8 f g g f8. f16
    f4 r r2
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key b \major \time 4/4 \tempoMarkup "Vivace"
    R1*2
    r2 r4 r8 d
    d4 d8 d c c c8. c16
    d4 r r r8 b
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key b \major \time 4/4 \tempoMarkup "Vivace"
    R1*2
    r2 r4 r8 b
    b'4. d,8 es c f f,
    b4 r r2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key b \major \time 4/4 \tempoMarkup "Vivace"
    r8 f b4 r8 b d4
    r8 d f4 \tuplet 3/2 8 { \sbOn b16( a) b-! f( es) f-! d( c) d-! f( es) f-! }
    \tuplet 3/2 8 { d( c) d-! b( a) b-! f( es) f-! d( c) d-! \sbOff } b8 f' b4
    r8 d f4 r2
    \tuplet 3/2 8 { \sbOn b16( a) b-! f( es) f-! d( c) d-! f( es) f-! d( c) d-! b( a) b-! f( es) f-! d( c) d-! \sbOff }
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key b \major \time 4/4 \tempoMarkup "Vivace"
    r4 r8 f b4 r8 b
    d4 r8 d \tuplet 3/2 8 { \sbOn b'16( a) b-! f( es) f-! d( c) d-! f( es) f-! }
    \tuplet 3/2 8 { d( c) d-! b( a) b-! f( es) f-! d( c) d-! \sbOff } b8 f' b4
    r8 d f4 r2
    \tuplet 3/2 8 { \sbOn b16( a) b-! f( es) f-! d( c) d-! f( es) f-! d( c) d-! b( a) b-! f( es) f-! d( c) d-! \sbOff }
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Vivace"
    R1*2
    r2 r4 r8 b'
    b4 b8 b b b a8. a16
    b4 r r2
  }
}

SopranoLyrics = \lyricmode {
  Au --
  di -- te, au -- di -- te in -- su --
  lae,
}

Alto = {
  \relative c' {
    \clef alto
    \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Vivace"
    R1*2
    r2 r4 r8 f
    f4 f8 f g g f8. f16
    f4 r r2
  }
}

AltoLyrics = \lyricmode {
  Au --
  di -- te, au -- di -- te in -- su --
  lae,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Vivace"
    R1*2
    r2 r4 r8 d
    d4 d8 d c c c8. c16
    d4 r r r8 b
  }
}

TenoreLyrics = \lyricmode {
  Au --
  di -- te, au -- di -- te in -- su --
  lae, "au -"
}

Basso = {
  \relative c {
    \clef bass
    \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Vivace"
    R1*2
    r4 r8 f b2~
    b4 b8 d, es c f8. f16
    b,4 r r2
  }
}

BassoLyrics = \lyricmode {
  Au -- di --
  te, au -- di -- te in -- su --
  lae,
}

Organo = {
  \relative c {
    \clef bass
    \key b \major \time 4/4 \tempoMarkup "Vivace"
    b4-\solo r8 b b4 r8 b
    b4 r8 b b4 r
    b r8 b b4 r8 b-\tutti
    b'4. d,8 es c f f,
    b4 r b-\solo r
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r4. <6>8 <6 5>2
  r1
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
