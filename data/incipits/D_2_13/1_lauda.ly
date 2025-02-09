\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key a \major \time 4/4 \tempoMarkup "Andante"
    R1*6
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Andante"
    R1*6
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Andante"
    R1*6
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Andante"
    R1*6
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "Andante"
    e'16( fis) e( fis) d( e) d( e) cis( d) cis( d) h( cis) h( cis)
    a a' a a a( gis) gis8 r16 fis fis fis fis( e) e8
    r16 d d d d( cis) cis8 fis fis16 e d8 cis\trill
    \sbOn h16 e \tuplet 3/2 8 { gis fis e } r e \tuplet 3/2 8 { gis fis e } \sbOff a8 a,16 d h4\trill
    a r r2
    R1
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "Andante"
    r2 e'16( fis) e( fis) d( e) d( e)
    cis8. cis16 h cis32 d e16 e, a8. a16 gis a32 h cis16 cis,
    fis8. fis16 e fis32 gis a16 a, a'8 d16 cis h8 a
    gis gis h h e a,4 gis8
    a4 r r2
    R1
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*4
    r2 e'16([^\solo fis) e( fis)] d([ e) d( e)]
    cis8 d16 e fis8 e16 d e a, a8 cis cis
  }
}

SopranoLyrics = \lyricmode {
  Lau -- _
  _ da, Ie -- ru -- sa -- lem, Do -- mi -- num, lau -- da,
}

Alto = {
  \relative c' {
    \clef alto
    \key a \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*6
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*4
    e16([^\solo fis) e( fis)] d([ e) d( e)] cis([ d) cis( d)] h([ cis) h( cis)]
    a8 h16 cis d8 cis16 h cis cis cis8 a a
  }
}

TenoreLyrics = \lyricmode {
  Lau -- _ _ _
  _ da, Ie -- ru -- sa -- lem, Do -- mi -- num, lau -- da,
}

Basso = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*6
  }
}

Organo = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \tempoMarkup "Andante"
    a'4-\solo fis8 gis a4 r8 gis
    a a, e'4 fis8 fis, cis'4
    d8 d, a'4 d4. dis8
    e e d d cis d e e,
    a a' fis gis a a, r gis'
    a4 d, a' r8 a,
  }
}

BassFigures = \figuremode {
  r4 <6> r4. <6 5>8
  r4 <5 4>8 <\t 3>4. <5 4>8 <\t 3>
  r4 <5 4>8 <\t 3>4. <6>8 <5>
  r4 <4 2> <6> <5 4>8 <\t 3>
  r4 <6> r4. <6 5>8
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

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
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
