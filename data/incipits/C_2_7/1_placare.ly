\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    R1*2 \gotoBar "7"
    R
    r2 r4 c'
    h2 b4 as
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    g'8-\solo es16 d c8 as' g es16 d c8 as'
    g16 g f es f f es d es4 r8 g \gotoBar "7"
    es16 d es f d8.\trill c16 c4 g'-\tutti
    as2~ as8 d, g f
    e8. e16 f8 f f4 es?
    d4. d8 c4 es
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    R1
    r2 c8-\solo b16 a g8 es' \gotoBar "7"
    c16 h c d h8. c16 c4 r
    r c-\tutti h2
    b4 as g c~
    c h c c
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    R1*2 \gotoBar "7"
    R
    g'2 as~
    as8 d, g f e4 f
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    R1*2 \gotoBar "7"
    R
    r2 r4 c'
    h2 b4 as
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    R1*2 \gotoBar "7"
    r2 r4 g'
    as2~ as8 d, g f
    e8. e16 f8 f f4 es?
    d2\trill c4 es
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*2 \gotoBar "7"
    R1*3
    r2 r4 c'^\tutti
  }
}

SopranoLyrics = \lyricmode {
  "Pla -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*2 \gotoBar "7"
    r2 r4 g'
    as2~ as8 d, g f
    e8. e16 f8 f f4 es?
    d4. d8 c4 es
  }
}

AltoLyrics = \lyricmode {
  Pla -- %7
  ca -- re, Chri -- ste,
  ser -- vu -- lis, pla -- ca -- re
  ser -- vu -- lis, "pla -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*2 \gotoBar "7"
    R1
    r4 c h2
    b4 as g c~
    c h c c
  }
}

TenoreLyrics = \lyricmode {
  Pla -- ca --
  re, Chri -- ste, ser --
  vu -- lis, "pla -"
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*2 \gotoBar "7"
    R1*3
    g'2 as
  }
}

BassoLyrics = \lyricmode {
  Pla -- "ca -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    c4-\solo r8 f es4 r8 f
    es4 d8 g c,4 r8 c \gotoBar "7"
    c4 g'8 g, c4 \clef tenor << {
      g''
      as2~ as8 d, g f
      e4 f2 es?4
    } \\ {
      r4
      r c h2
      b4 as g c
    } >>
    \clef bass g2 as~
  }
}

BassFigures = \figuremode {
  r4. <_->2 <_->8
  r4 <7>8 <_!> r2
  r4 <_!>2.
  r1
  r
  <5 4>4 <\t _!> r2
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
