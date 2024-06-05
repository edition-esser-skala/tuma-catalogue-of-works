\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \tempoMarkup "[no tempo]"
    c'4. c8 h4 b
    a4. h8 c g c4~
    c h c r
    R1*3
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \tempoMarkup "[no tempo]"
    g'4. g8 g4 g
    g f g es!
    as g g r
    R1*3
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \tempoMarkup "[no tempo]"
    es4. es8 d4 c
    c d c4. es!8
    d2 c4 r
    R1*3
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "[no tempo]"
    c4. c8 g'4 e
    f d es as
    f g c, r
    R1*3
  }
}

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    g''4. g8 g4 g
    g f g c,
    d2 c4 r
    R1*3
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    c'4. c8 d4 e
    c d c c~
    c g g r
    R1*3
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "[no tempo]"
    c'4. c8 h4 b
    a4. h8 c g c4~
    c h c8 g' f([ es)]
    r f es([ d!)] r es d([ c)]
    r des c([ h)] c4 r
    R1
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "[no tempo]"
    c'4. c8 h4 b
    a4. h8 c g c4~
    c h c r8 g
    des'( c) r f, c'( b) r es,
    b'( as) r d,! es4 r
    R1
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    c'4.^\tutti c8 h4 b
    a4. h8 c[ g] c4~
    c h c r
    R1*3
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- _ _ _
  _ son.
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    g'4.^\tutti g8 g4 g
    g f g es!
    as g g r
    R1
    r2 r8 g^\solo f[ es]
    as2 r8 f es[ d]
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- _ son, e --
  lei -- _ son,

  e -- lei --
  son, e -- "lei -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    es4.^\tutti es8 d4 c
    c d c4. es!8
    d2 c4 r
    R1*2
    r8 c^\solo f[ es] d4 r
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- _ son, e --
  lei -- son,

  e -- lei -- son,
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    c4.^\tutti c8 g'4 e
    f d es as
    f g c, r
    R1*3
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- _ son, e --
  lei -- _ son.
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "[no tempo]"
    c4.-\tutti c8 g'4 e
    f d es as
    f g c, r8 c'-\solo
    b( as) r b as( g) r as
    g( f) r g c,4. c8
    f2 b
  }
}

BassFigures = \figuremode {
  r2 <_!>4 <6 5->
  <9> <5>8 <6!> <6>2
  <6 5 _->4 <_!> r2
  <_->8 <6>2..
  r8 <6->4 <_!>8 r2
  <_->1
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
