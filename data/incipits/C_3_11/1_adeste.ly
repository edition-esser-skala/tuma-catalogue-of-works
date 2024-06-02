\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key d \major \time 3/4 \tempoMarkup "Larghetto"
    R2.*2
    r4 r \gotoBar "23" cis'
    d8 cis d4 r
    r r cis
    d8 cis d4 r
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key d \major \time 3/4 \tempoMarkup "Larghetto"
    R2.*2
    r4 r \gotoBar "23" e
    fis8 e fis4 r
    r r fis
    fis fis r
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key d \major \time 3/4 \tempoMarkup "Larghetto"
    R2.*2
    r4 r \gotoBar "23" a
    a a r
    r r ais
    h8 ais h4 r
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key d \major \time 3/4 \tempoMarkup "Larghetto"
    R2.*2
    r4 r \gotoBar "23" a'
    fis d r
    r r fis
    d h r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 3/4 \tempoMarkup "Larghetto"
    a'4-\markup \remark "affettoso" d8( fis) e( g)
    fis d' cis( h) a( g)
    fis4 fis8([ a)] \gotoBar "23" cis,4
    d4 d8( fis) e( g)
    fis( e) fis( e) d( cis)
    d4 d8( cis) d( cis)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 3/4 \tempoMarkup "Larghetto"
    R2.*2
    a'4-\markup \remark "affettoso" d8([ fis)] \gotoBar "23" e,4
    d4 fis8([ a)] g( h)
    a4 d8( cis) h( ais)
    h4 r h8( ais)
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \major \time 3/4 \autoBeamOff \tempoMarkup "Larghetto"
    R2.*2
    r4 r \gotoBar "23" cis'^\tutti
    d8[ cis] d4 r
    r r cis
    d8[ cis] d4 r
  }
}

SopranoLyrics = \lyricmode {
  Ad --
  e -- ste,
  ad --
  e -- ste,
}

Alto = {
  \relative c' {
    \clef alto
    \key d \major \time 3/4 \autoBeamOff \tempoMarkup "Larghetto"
    R2.*2
    r4 r \gotoBar "23" e^\tutti
    fis8[ e] fis4 r
    r r fis
    fis fis r
  }
}

AltoLyrics = \lyricmode {
  Ad --
  e -- ste,
  ad --
  e -- ste,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \major \time 3/4 \autoBeamOff \tempoMarkup "Larghetto"
    R2.*2
    r4 r \gotoBar "23" a^\tutti
    a a r
    r r ais
    h8[ ais] h4 r
  }
}

TenoreLyrics = \lyricmode {
  Ad --
  e -- ste,
  ad --
  e -- ste,
}

Basso = {
  \relative c {
    \clef bass
    \key d \major \time 3/4 \autoBeamOff \tempoMarkup "Larghetto"
    R2.*2
    r4 r \gotoBar "23" a'^\tutti
    fis d r
    r r fis
    d h r
  }
}

BassoLyrics = \lyricmode {
  Ad --
  e -- ste,
  ad --
  e -- ste,
}

Organo = {
  \relative c {
    \clef bass
    \key d \major \time 3/4 \tempoMarkup "Larghetto"
    d2-\solo r4
    d'2 cis4
    d2 \gotoBar "23" a,4-\tutti
    d2 r4
    r r fis
    d h r
  }
}

BassFigures = \figuremode {
  r2.
  r2 <6>8 <5>
  r2.
  r
  r2 <_+>4
  <6>2.
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
