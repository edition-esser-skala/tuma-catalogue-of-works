\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r2 r8 e g c
    e4 e r2
    r8 c c c c4 h
    r2 r4 h8 h
    cis8. cis16 cis4 d4. f8
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r2 r8 c e g
    g4 g r2
    r8 g g fis g4 g
    r2 r4 g8 g
    g8. g16 g4 a4. a8
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r8 e, g c e2
    e r
    r8 e c c d4 d
    r2 r4 d8 d
    e8. e16 e4 a,4. d8
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r8 c e g c2
    c r
    r8 c a a g2
    r2 r4 g4
    e2 f~
  }
}

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    R1
    g''8 e16 f g8 e e4 r
    r8 g g fis g2
    R1*2
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    R1
    e'8 c16 d e8 c c4 r
    r8 c c c d2
    R1*2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r2 r8 e g c
    e2 g16( a) g( c) f,( g) f( d')
    e,4 c2 h4
    d16( e) d( g) c,( d) c( a') h,4 h
    cis4. cis8 d4. f8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r2 r8 c e g
    c2 e4 d
    c c2 h4
    h a g h
    cis4. cis8 d4. f8
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r2 r8 e^\tutti g c
    e4 e r2
    r8 c c c c4 h
    r2 r4 h8 h
    cis8. cis16 cis4 d4. f8
  }
}

SopranoLyrics = \lyricmode {
  O al -- ti --
  tu -- do
  di -- vi -- ti -- a -- rum
  sa -- pi --
  en -- ti -- ae et "sci -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r2 r8 c e g
    g4 g r2
    r8 g g fis g4 g
    r2 r4 g8 g
    g8. g16 g4 a4. a8
  }
}

AltoLyrics = \lyricmode {
  O al -- ti --
  tu -- do
  di -- vi -- ti -- a -- rum
  sa -- pi --
  en -- ti -- ae et "sci -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r8 e, g c e2
    e r
    r8 e c c d4 d
    r2 r4 d8 d
    e8. e16 e4 a,4. d8
  }
}

TenoreLyrics = \lyricmode {
  O al -- ti -- tu --
  do
  di -- vi -- ti -- a -- rum
  sa -- pi --
  en -- ti -- ae et "sci -"
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r8 c e g c2
    c r
    r8 c a a g4 g
    r2 r4 g8 g
    e8. e16 e4 f4. f8
  }
}

BassoLyrics = \lyricmode {
  O al -- ti -- tu --
  do
  di -- vi -- ti -- a -- rum
  sa -- pi --
  en -- ti -- ae et "sci -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    c2-\tutti c'~
    c c4~-\solo c8 h
    c c-\tutti a4 g2
    g4~-\solo g8 fis g4 g-\tutti
    e2 f~
  }
}

BassFigures = \figuremode {
  r1
  r2. <4 2>8 <6>
  r4 <7>8 <6\\> <4>4 <3>
  r <2>8 <6> r2
  <6\\> <6>
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
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { \transposedNameShort "clno" "C" "" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
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
