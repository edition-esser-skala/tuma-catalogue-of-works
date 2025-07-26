\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    c4 r c r
    c e' g4. g8
    g2 g,4 r
    g r g g'
    g4. g8 g4 r
    R1
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    c4 r c r
    c e' d4. d8
    d2 g,4 r
    g r g d'
    d4. d8 e4 r
    R1
  }
}

Cornetto = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    R1
    r4 c' c h8( a)
    h2 r
    r r4 h
    h4. h8 c4 r
    c c8 c c4 c8 c
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    R1
    r4 g' g4. g8
    g2 r
    r r4 g
    g4. g8 g4 r
    a a8 a a4 a8 a
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    R1
    r4 e d4. d8
    d2 r
    r r4 d
    d4. d8 e4 r
    c c8 c d4 d8 d
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    R1
    r4 c g2
    g r
    r r4 g'
    f2 e4 r
    f2 fis
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    c16( e) e( g) g( e) e-! c-! c( f) f( a) a( f) f-! c-!
    c( e) g-! c-! e8 c d2~
    d g,16( h) h( d) d( h) h-! g-!
    g( c) c( e) e( c) c-! g-! g( h) d-! g-! h8-! d,-!
    h2 c16( e) e( g) g( e) e-! c-!
    a'( a,) a( c) c( f) f( a,) a( d) d( fis) fis( a) a( d,)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    c16( e) e( g) g( e) e-! c-! c( f) f( a) a( f) f-! c-!
    c( e) g-! c-! e8 c c4 h8 a
    h2 g16( h) h( d) d( h) h-! g-!
    g( c) c( e) e( c) c-! g-! g( h) d-! g-! h8 h,
    h2 c16( e) e( g) g( e) e-! c-!
    a'( a,) a( c) c( f) f( a,) a( d) d( fis) fis( a) a( d,)
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1
    r4 c'^\tutti c h8[ a]
    h2 r
    r r4 h
    h4. h8 c4 r
    c c8 c c4 c8 c
  }
}

SopranoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat,
  ma --
  gni -- fi -- cat
  a -- ni -- ma, a -- ni -- ma
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1
    r4 g'^\tutti g4. g8
    g2 r
    r r4 g
    g4. g8 g4 r
    a a8 a a4 a8 a
  }
}

AltoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat,
  ma --
  gni -- fi -- cat
  a -- ni -- ma, a -- ni -- ma
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1
    r4 e^\tutti d4. d8
    d2 r
    r r4 d
    d4. d8 e4 r
    c c8 c d4 d8 d
  }
}

TenoreLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat,
  ma --
  gni -- fi -- cat
  a -- ni -- ma, a -- ni -- ma
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1
    r4 c^\tutti g4. g8
    g2 r
    r r4 g'
    f4. f8 e4 r
    f f8 f fis4 fis8 fis
  }
}

BassoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat,
  ma --
  gni -- fi -- cat
  a -- ni -- ma, a -- ni -- ma
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    c4-\solo r c r
    c c-\tutti g2
    g g4-\solo r
    g r g g'-\tutti
    f2 e4 r
    f2 fis
  }
}

BassFigures = \figuremode {
  r2 <6 4>
  <5 3>1
  r
  <6 4>2 <5 3>
  r1
  r <6 5>
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { \transposedNameShort "clno" "C" "" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
    >>
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
