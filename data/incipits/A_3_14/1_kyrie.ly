\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    R1
    h'8. h16 h8 h c4 c
    r8 c c c c4\trill h
    r2 r8 cis cis cis
    dis4 r r8 d d d
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    R1
    g'8. g16 g8 g a4 a
    r8 a a a16 a a4 g
    r2 r8 a a a
    a4 r r8 gis gis gis
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    R1
    d8. d16 d8 d e4 e
    r8 d d d d4 d
    r2 r8 e e e
    fis4 r r8 h, h h
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    R1
    g'2 g
    r8 fis fis fis g2
    r r8 g g g
    fis4 r r8 e e e
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    r8 g''16( fis) d8 h'16( a) d,8 a16( fis) d8 a''16( c,)
    h8 d16( h) g8 h'16( g) e8 e16( c) a8 c16( a)
    a'8 a16( fis) d8 c c4\trill h
    r8 h'16( g) e8 g16( e) cis8 e16( cis) a8 a'16( cis,)
    dis8 a'16( fis) dis8 c16( a) gis8 h16( gis) e8 e'16( h)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    r8 g''16( fis) d8 h'16( a) d,8 a16( fis) d8 a''16( c,)
    h8 d16( h) g8 h'16( g) e8 e16( c) a8 c16( a)
    a'8 a16( fis) d8 c c4\trill h
    r8 h'16( g) e8 g16( e) cis8 e16( cis) a8 a'16( cis,)
    dis8 a'16( fis) dis8 c16( a) gis8 h16( gis) e8 e'16( h)
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1
    h'8.^\tutti h16 h8 h c4 c
    r8 c c c16 c c4\trill h
    r2 r8 cis cis cis
    dis4 r r8 d d d
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son,
  e -- lei -- son, e -- lei -- son,
  e -- le -- i --
  son, e -- le -- "i -"
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1
    g'8.^\tutti g16 g8 g a4 a
    r8 a a a16 a a4 g
    r2 r8 a a a
    a4 r r8 gis gis gis
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son,
  e -- lei -- son, e -- lei -- son,
  e -- le -- i --
  son, e -- le -- "i -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1
    d8.^\tutti d16 d8 d e4 e
    r8 d d d16 d d4 d
    r2 r8 e e e
    fis4 r r8 h, h h
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son,
  e -- lei -- son, e -- lei -- son,
  e -- le -- i --
  son, e -- le -- "i -"
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1
    g'8.^\tutti g16 g8 g g4 g
    r8 fis fis fis16 fis g4 g,
    r2 r8 g' g g
    fis4 r r8 e e e
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son,
  e -- lei -- son, e -- lei -- son,
  e -- le -- i --
  son, e -- le -- "i -"
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    g'4-\solo r fis r
    g4.-\tutti g8 g2
    r8 fis fis fis g4 g,
    g'-\solo r r8 g-\tutti g g
    fis4 r r8 e e e
  }
}

BassFigures = \figuremode {
  r2 <6>
  r <4 2>
  r8 <6>4. <9 4>4 <8 3>
  r2 r8 <4\+ 2>4.
  <6\\>2 r8 <7! _+>4.
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
