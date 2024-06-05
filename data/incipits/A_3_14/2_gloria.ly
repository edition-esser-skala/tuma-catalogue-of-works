\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \tempoMarkup "Andante"
    r4 d'8 h g2~
    g4 fis g r
    g r g r
    g4. g8 fis8. fis16 fis4
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \tempoMarkup "Andante"
    r2 r4 d8 e
    e4 d d r
    e r d r
    e4. e8 d8. d16 d4
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \tempoMarkup "Andante"
    r2 r4 h8 h
    a4. a8 h4 r
    h r h r
    a4. a8 a8. a16 a4
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Andante"
    r2 r4 g'8 e
    c4 d g, r
    e' r h r
    c4. cis8 d2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Andante"
    r4 d'8 h g2~
    g4 fis g8 d'\p g16( fis) g8
    r h, g'16( fis) g8 r d g16( fis) g8
    r e\f g16( fis) g8 r a, fis'16( e) fis8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Andante"
    r4 d'8 h g2~
    g4 fis g8 g\p h16( a) h8
    r g h16( a) h8 r g h16( a) h8
    r a\f a4 r8 fis a16( g) a8
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    r4 d'8^\tutti h g2~
    g4 fis g r
    g r g r
    g4. g8 fis8. fis16 fis4
  }
}

SopranoLyrics = \lyricmode {
  Et in ter --
  ra pax,
  pax, pax,
  pax ho -- mi -- ni -- bus
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    r2 r4 d8^\tutti e
    e4 d d r
    e r d r
    e4. e8 d8. d16 d4
  }
}

AltoLyrics = \lyricmode {
  Et in
  ter -- ra pax,
  pax, pax,
  pax ho -- mi -- ni -- bus
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    r2 r4 h8^\tutti h
    a4. a8 h4 r
    h r h r
    a4. a8 a8. a16 a4
  }
}

TenoreLyrics = \lyricmode {
  Et in
  ter -- ra pax,
  pax, pax,
  pax ho -- mi -- ni -- bus
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    r2 r4 g'8^\tutti e
    c4 d g, r
    e' r h r
    c4. cis8 d8. d16 d4
  }
}

BassoLyrics = \lyricmode {
  Et in
  ter -- ra pax,
  pax, pax,
  pax ho -- mi -- ni -- bus
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Andante"
    g4-\tutti r r g'8 e
    c4 d g, r
    e' r h r
    c4. cis8 d2
  }
}

BassFigures = \figuremode {
  r1
  <6 5>
  r1
  <6 5>4. <\t \t>8 r2
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
