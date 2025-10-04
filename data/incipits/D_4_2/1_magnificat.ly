\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 g'' g4. g8
    e16 f e f g f g f e4 e8 e
    e4 r r2
    R1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" g4 r8 \pa g f e16 d \pd
    e2 r4
    g r8 \pa g f e16 d \pd
    e f g f e f g f e f g e
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 e' d4. d8
    c16 d c d e d e d c4 c8 c
    c4 r r2
    R1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" e4 r8 e d g,
    c2 r4
    e r8 e d g,
    c16 d e d c d e d c d e c
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 c8 c g g16 g g8 g
    c4 c8 c c c16 c c4
    R1
    R1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" c4 r r8 g
    c4 r r
    c r8 c g g
    c4 r r
  }
}

Cornetto = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 c' d4. d8
    e4 r e e8 e
    c4 c c h8 a
    gis1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" R2.
    e'4 e d
    e8. e16 e4 d8 d
    e4 e e
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 g' g4. g8
    g4 r e e8 e
    e4 e e d
    e1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" R2.
    g4 g g
    g8. g16 g4 a8 g
    g4 g g
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 e d4. d8
    c4 r g g8 g
    a4 a a4. a8
    h1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" R2.
    c4 c h
    c8. c16 c4 c8 h
    c4 c c
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 c h4. h8
    c4 r c c8 c
    a4 a f4. f8
    e1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" c''16 d e d c8 e, f g
    c,4 e g
    c16 d e d c8 e, f g
    c,4 e c
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 c' d2
    e4 g16( f) g( f) e4. e8
    c2. h8 a
    gis1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" R2.
    e'4 e d
    e4. g8 f e16 d
    e2 e4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 c' g4. g8
    g4 e'16( d) e( d) c4. c8
    c4 e,2 d4
    e1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" R2.
    e'4 e d
    e4. g8 f e16 d
    e2 e4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 c'^\tutti d4. d8
    e4 r e e8 e
    c4 c c h8[ a]
    gis1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" R2.
    e'4 e d
    e8. e16 e4 d8 d
    e4 e e
  }
}

SopranoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat a -- ni -- ma
  me -- a Do -- mi --
  num,

  et ex -- ul --
  ta -- vit spi -- ri -- tus
  me -- us in
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 g'^\tutti g4. g8
    g4 r e e8 e
    e4 e e d
    e1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" R2.
    g4 g g
    g8. g16 g4 a8 g
    g4 g g
  }
}

AltoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat a -- ni -- ma
  me -- a Do -- mi --
  num,

  et ex -- ul --
  ta -- vit spi -- ri -- tus
  me -- us in
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 e^\tutti d4. d8
    c4 r g g8 g
    a4 a a4. a8
    h1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" R2.
    c4 c h
    c8. c16 c4 c8 h
    c4 c c
  }
}

TenoreLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat a -- ni -- ma
  me -- a Do -- mi --
  num,

  et ex -- ul --
  ta -- vit spi -- ri -- tus
  me -- us in
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 c^\tutti h4. h8
    c4 r c c8 c
    a4 a f4. f8
    e1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace" R2.
    c'4 e g
    c4. e,8 f g
    c,4 c e8 c
  }
}

BassoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat a -- ni -- ma
  me -- a Do -- mi --
  num,

  et ex -- ul --
  ta -- vit, ex -- ul --
  ta -- vit, ex -- "ul -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 c-\tutti h2
    c4 r c2
    a f
    e1\fermata \bar "||"
    \time 3/4 \tempoMarkup "Vivace"
      c''16 d e d c8 e, f g
    c,4 e g
    c16 d e d c8 e, f g
    c,4 e c
  }
}

BassFigures = \figuremode {
  r2 <6>
  r1
  r2 <7>4 <6>
  <_+>1
  r2.
  r
  r2.
  r
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
        \set Staff.instrumentName = \markup \center-column { \transposedName "clno" "C" "" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
    >>
    \new Staff {
      \set Staff.instrumentName = \transposedTimpShort "C" "" "G" ""
      \Timpani
    }
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
