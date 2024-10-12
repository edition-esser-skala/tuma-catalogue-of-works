\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*6
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*6
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*6
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*6
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*5
    e'2~ e16 e(-. fis-. gis-. a-. h-. c-. c-.)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*5
    c'2~ c16 c(-. d-. e-. fis-. gis-. a-. a-.)
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    r4 r8 h'^\solo c h16[ c] d8 c16 h
    c8 h c4 h r
    e8 c d e f d16 c h8. h16
    a4 r r2
  }
}

SopranoLyrics = \lyricmode {
  Sit no -- men Do -- mi -- ni
  be -- ne -- di -- ctum,
  ex hoc nunc et us -- que in sae -- cu --
  lum.
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    r4 r8 gis'^\solo a gis16[ a] h8 a16 gis
    a8 gis a a gis e fis gis
    a4 a8 a a h16 a gis8. gis16
    a4 r r2
  }
}

AltoLyrics = \lyricmode {
  Sit no -- men Do -- mi -- ni
  be -- ne -- di -- ctum, ex hoc nunc et
  us -- que, et us -- que in sae -- cu --
  lum.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r8 e^\solo c a h a16 h c8. c16
    h8 e c a r4 d~
    d8 c16[ d] h8. h16 a4 r
    R1*3
  }
}

TenoreLyrics = \lyricmode {
  Lau -- da -- te pu -- e -- ri Do -- mi --
  num: Lau -- da -- te no --
  men Do -- mi -- ni.
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r4 r8 a'^\solo gis e a8. a16
    gis8 r r a f d r a'
    gis a e8. e16 a,4 r
    R1
    r2 r4 r8 e'
    c16[ a h c] d[ e] fis[ gis] a4 a
  }
}

BassoLyrics = \lyricmode {
  Lau -- da -- te Do -- mi --
  num: Lau -- da -- te no --
  _ men Do -- mi -- ni.

  A
  so -- _ lis or -- tu
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    a4-\solo r8 a' gis e a a,
    e'4 a d, f8 d
    e a, e' e, a4 d8 e
    a, e' a dis, e4 d
    c4. c8 d4 e8 e,
    a2~ a4 r
  }
}

BassFigures = \figuremode {
  r1
  <_+>2 <5>4 <6>
  <7 _+>2 r4 <6>8 <_+>
  r r4 <7 5>8 <_+>4 <\t>
  r2 <5>8 <6>16 <5> <_+>4
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
