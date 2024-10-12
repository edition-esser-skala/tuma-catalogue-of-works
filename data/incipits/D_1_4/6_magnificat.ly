\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key a \major \time 4/4 \tempoMarkup "Grave"
    r4 a' a4. a8
    a2 r
    r8 a4 a16 a a4 gis
    a4. a8 gis2\fermata
    \tempoMarkup "Allegro" r8 a a gis a a gis a16 h
    h8 a r4 r2
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key a \major \time 4/4 \tempoMarkup "Grave"
    r4 e e4. e8
    e2 r
    r8 e4 e16 e fis4 e
    e dis e2\fermata
    \tempoMarkup "Allegro" r8 e e e e e e e16 e
    e8 e r4 r2
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key a \major \time 4/4 \tempoMarkup "Grave"
    r4 cis cis4. cis8
    cis2 r
    r8 cis4 cis16 cis h4 h
    a4. a8 h2\fermata
    \tempoMarkup "Allegro" r8 cis cis h cis cis h h16 h
    cis8 cis r4 r2
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \tempoMarkup "Grave"
    r4 a' a2
    a, r
    r8 a'4 a8 dis,4 e
    fis fis, e2\fermata
    \tempoMarkup "Allegro" r8 a' a e cis a e' fis16 gis
    a8 a, r a' h4 r8 gis
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "Grave"
    r4 e' e4. e8
    e2 a,,16( cis) cis( e) e( a) a( cis)
    e4. e8 fis4 e~
    e dis e2\fermata
    \tempoMarkup "Allegro" r8 e e4~ e2~
    e4 \tuplet 3/2 8 { a16 h cis } cis,8 d16( cis) d8 \tuplet 3/2 8 { gis16 a h } h,8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "Grave"
    r4 cis' cis4. cis8
    cis2 r8 a,16( cis) cis( a) cis( a')
    cis4 a2 gis4
    a2 gis\fermata
    \tempoMarkup "Allegro" r8 a a gis a4 gis8 a16 h
    h8 a r cis~ cis h r h
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Grave"
    r4 a'^\tutti a4. a8
    a2 r
    r8 a4 a16 a a4 gis
    a4. a8 gis2\fermata
    \tempoMarkup "Allegro" r8 a a gis a a gis a16 h
    h8 a r4 r2
  }
}

SopranoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat
  a -- ni -- ma me -- a
  Do -- mi -- num,
  et ex -- sul -- ta -- vit spi -- ri -- tus
  me -- us
}

Alto = {
  \relative c' {
    \clef alto
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Grave"
    r4 e^\tutti e4. e8
    e2 r
    r8 e4 e16 e fis4 e
    e dis e2\fermata
    \tempoMarkup "Allegro" r8 e e e e e e e16 e
    e8 e r4 r2
  }
}

AltoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat
  a -- ni -- ma me -- a
  Do -- mi -- num,
  et ex -- sul -- ta -- vit spi -- ri -- tus
  me -- us
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Grave"
    r4 cis^\tutti cis4. cis8
    cis2 r
    r8 cis4 cis16 cis h4 h
    a4. a8 h2\fermata
    \tempoMarkup "Allegro" r8 cis cis h cis cis h h16 h
    cis8 cis r4 r2
  }
}

TenoreLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat
  a -- ni -- ma me -- a
  Do -- mi -- num,
  et ex -- sul -- ta -- vit spi -- ri -- tus
  me -- us
}

Basso = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Grave"
    r4 a'^\tutti a4. a8
    a,2 r
    r8 a'4 a16 a dis,4 e
    fis4. fis8 e2\fermata
    \tempoMarkup "Allegro" r8 a a e cis a e' fis16 gis
    a8 a, r4 r2
  }
}

BassoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat
  a -- ni -- ma me -- a
  Do -- mi -- num,
  et ex -- sul -- ta -- vit spi -- ri -- tus
  me -- us
}

Organo = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \tempoMarkup "Grave"
    r4 a'-\tutti a2
    a, r
    r8 a'4 a8 dis,4 e
    fis fis, e2\fermata
    \tempoMarkup "Allegro" r8 a' a e cis a e' fis16 gis
    a8 a, r a'-\solo h4 r8 gis
  }
}

BassFigures = \figuremode {
  r1
  r
  r2 <6 5>
  <7>4 <6\\>2.
  r1
  <9>8 <8>4. <9>8 <8>4 r8
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
