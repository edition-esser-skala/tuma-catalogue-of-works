\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    R1*5
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    R1*3
    a'8-\solo g16 fis g8 fis16 e fis4 r
    R1
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    R1*3
    fis8-\solo e16 d e8 d16 cis d4 r
    R1
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    R1*5
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    h'2\p a~
    a4 g g2
    cis d
    r fis,
    gis4 ais ais2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    d2\p e4 d~
    d2 e~
    e4. cis8 a2
    r fis'
    e4 cis2 fis4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*5
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*5
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    d4.^\solo e8 c2
    h4 d d cis
    r8 e e g, g4 fis
    r2 r4 fis'8 h,
    h4 ais r e'8 e
  }
}

TenoreLyrics = \lyricmode {
  A -- gnus De --
  i, qui tol -- lis
  pec -- ca -- ta mun -- di:
  Mi -- se --
  re -- re, mi -- "se -"
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*5
  }
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    g'2.-\solo fis4
    g2 e
    a, d
    d8 h' g a d,2
    cis fis,
  }
}

BassFigures = \figuremode {
  <5>4. <6>8 <4 2>2
  r <7>4 <6\\>
  <7 _+>2 <5 4>4 <\t 3>
  r4 <6 5>8 <_+> <5>4 <6>
  <7> <6\\> <7>2
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
