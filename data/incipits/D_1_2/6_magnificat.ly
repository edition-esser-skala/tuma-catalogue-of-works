\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 g'' f4. f8
    e8. f16 g f g f e4 e8 e
    fis4 g2 \hA fis4
    g1
    \tempoMarkup "Allegro" r8 g g16 f e d e f e f g f e d
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 e' d4. d8
    c8. d16 e d e d c4 c8 c
    d4 d d2
    d1
    \tempoMarkup "Allegro" r8 e d d c c d d
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 c c g8 g
    c4 r r2
    r4 g r2
    g1
    \tempoMarkup "Allegro" r8 c g g c4 g8 g
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 e' f4. f8
    e4 r e4. e8
    fis4 g2 \hA fis4
    g1
    \tempoMarkup "Allegro" r8 e d16 g, g' f e c e f g f e d
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 c' d4. d8
    c4 r c2~
    c4 h a2
    g1
    \tempoMarkup "Allegro" r8 c d h c4 d8 h
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 e'^\tutti d4. d8
    c4 r c c8 c
    c4 h a4. a8
    g1
    \tempoMarkup "Allegro" r8 c d h c c d h16 h
  }
}

SopranoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat a -- ni -- ma
  me -- a Do -- mi --
  num,
  et ex -- ul -- ta -- vit spi -- ri -- tus
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 g'^\tutti f4. f8
    e4 r e e8 e
    fis4 g g \hA fis8. fis16
    g1
    \tempoMarkup "Allegro" r8 g g g g g g g16 g
  }
}

AltoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat a -- ni -- ma
  me -- a Do -- _ mi --
  num,
  et ex -- ul -- ta -- vit spi -- ri -- tus
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 c^\tutti a g
    g r a a8 a
    a4 h8[ c] d4. d8
    d1
    \tempoMarkup "Allegro" r8 e d d e e d d16 d
  }
}

TenoreLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat a -- ni -- ma
  me -- a Do -- mi --
  num,
  et ex -- ul -- ta -- vit spi -- ri -- tus
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 c^\tutti c h
    c r a a8 a
    d4 g, d'4. d8
    g,1
    \tempoMarkup "Allegro" r8 c' h g c c h a16 g
  }
}

BassoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat a -- ni -- ma
  me -- a Do -- mi --
  num,
  et ex -- ul -- ta -- vit spi -- ri -- tus
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 c-\tutti c h
    c r a2
    d4 g, d'2
    g,1
    \tempoMarkup "Allegro" r8 c' h g c4 h8 g
  }
}

BassFigures = \figuremode {
  r2 <4 2>4 <6>
  r1
  <7 _+>2 <4>4 <_+>
  r1
  r
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { \transposedNameShort "clno" "C" "" "1, 2" }
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
