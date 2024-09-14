\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1*5
    r8 f f'2 es4
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1*4
    r2 r4 r8 es
    b'4. as8 g b, g'4
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1*4
    r2 r8 b es4~
    es d8 c b2
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1*2
    r2 g4. g8
    c4 c f,4. f8
    b4. b8 es4. c8
    b2 es4. es8
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    c16(\pocoP g') g( es) c( es) g( c) as2
    f16( b) b( f) b,( d) f( b) g2~
    g16 c, f e f4. es8 d4\trill
    c16( g') g( es) c( es) g( c) as2
    f16( b) b( f) d( b) f'( b) g4 r
    r8 f f'2 es4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    r2 c16(\pocoP f) f( c) as( c) f( as)
    d,2 b16( es) es( b) g( b) es( g)
    c,4~ c16 c d c h8 c4 h8
    c4 r c16( f) f( c) as( c) f( as)
    d,2 es4 r8 es
    b'4. as8 g b, g'4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*5
    r8 f^\tutti f'2 es4
  }
}

SopranoLyrics = \lyricmode {
  Cla -- "ma -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*4
    r2 r4 r8 es^\tutti
    b'4. as8 g b, g'4
  }
}

AltoLyrics = \lyricmode {
  Cla --
  ma -- _ vi, cla -- "ma -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*4
    r2 r8 b^\tutti es4~
    es d8[ c] b2
  }
}

TenoreLyrics = \lyricmode {
  Cla -- ma --
  _ vi,
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*2
    r2 g4.^\tutti g8
    c4 c f,4. f8
    b4 b8 b es4. c8
    b2 es4. es8
  }
}

BassoLyrics = \lyricmode {
  De pro --
  fun -- dis, de pro --
  fun -- dis cla -- ma -- _
  _ vi, "cla -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    c2-\solo f,
    b es,
    as g
    c f,
    b4. b8-\tutti es4. c8
    b2 es4. es8
  }
}

BassFigures = \figuremode {
  r2 <_->
  r1
  <7>4 <6> <7 _!>8 <6 4> <5 \t> <\t _!>
  r2 <_->
  r1
  <4>4 <3> <9> <8>
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
