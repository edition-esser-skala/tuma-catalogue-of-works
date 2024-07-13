\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    c'1
    h2 h4 r
    b1
    b2 as4 r
    c2 d4 es!
    c2 h
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    g'2. f4
    g2~ g4 r
    g1~
    g2 f4 r
    f2. es!4~
    es as d,2
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    es2 c
    d~ d4 r
    d2 des~
    des4 c c r
    as2 g4 g~
    g f g2
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    c2 as'
    g g4 r
    g2 f
    e f4 r
    f2 h,4 c
    as2 g
  }
}

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    g''2. f4
    g8 g16 g g g g g g4 r
    g1~
    g2 f4 r
    r2 g4 g
    g f g2
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    c'1
    d8 d16 d d d d d d4 r
    d1
    e2 c4 r
    r2 d4 c
    c4. c8 d2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    c'1
    h2~ h4 r
    b1~
    b2 as4 r
    c2 d4 es!
    c2 h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    g'2. f4
    g2~ g4 r
    g1~
    g2 f4 r
    f2. es!4~
    es as d,2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    c'1^\tutti
    h2~ h4 r
    b1~
    b2 as4 r
    c2 d4 es!
    c2 h
  }
}

SopranoLyrics = \lyricmode {
  San --
  ctus, __
  san --
  ctus,
  san -- _ ctus,
  san -- ctus
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    g'2.^\tutti f4
    g2~ g4 r
    g1~
    g2 f4 r
    f2. es!4~
    es as d,2
  }
}

AltoLyrics = \lyricmode {
  San -- _
  ctus, __
  san --
  ctus,
  san -- _
  _ ctus
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    es2^\tutti c
    d~ d4 r
    d2 des~
    des4 c c r
    as2 g4 g~
    g f g2
  }
}

TenoreLyrics = \lyricmode {
  San -- _
  ctus, __
  san -- _
  _ ctus,
  san -- _ _
  _ ctus
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    c2^\tutti as'
    g~ g4 r
    g2 f
    e f4 r
    f2 h,4 c
    as2 g
  }
}

BassoLyrics = \lyricmode {
  San -- _
  ctus, __
  san -- _
  _ ctus,
  san -- _ _
  _ ctus
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    c2-\tutti as'
    g g4 r
    g2 f
    e f4 r
    f2 h,4 c
    as2 g
  }
}

BassFigures = \figuremode {
  r2 <7>4 <6>
  <_!>1
  <_->2 <4 2>
  <7- 5>4 <6 \t> <_->2
  q <6 5>4 r
  <7> <6> <_!>2
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
        \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
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
