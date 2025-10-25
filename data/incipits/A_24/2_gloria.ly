\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1
    g''16 f g a f e f g e4 r
    g16 f g a f e f g e4 r
    R1*2
    r2 g16 f g a f e f g
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1
    e'16 d e f d c d e c4 r
    e16 d e f d c d e c4 r
    R1*2
    r2 e16 d e f d c d e
  }
}

TrombaI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1
    g'4 r8 g g4 r
    g r8 g g4 r
    R1*2
    r2 g4 r8 g
  }
}

TrombaII = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1
    c4 r8 g c4 r
    c r8 g c4 r
    R1*2
    r2 c4 r8 g
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1
    c4 r8 g c4 r
    c r8 g c4 r
    R1*2
    r2 c4 r8 g
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1
    r2 c'4 c8 h
    c4 r e d8 c
    d16( c d e) c( h c d) h4 r
    r2 d16( c d e) c( h c d)
    h4 r r2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1
    r2 g'4 g8 g
    e4 r g4. a8
    h16( a h c) a( g a h) g4 r
    r2 h16( a h c) a( g a h)
    g4 r r2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    c'16[^\solo g a h] c[ h c d] e[ g, a h] c[ d e f]
    g16. c,32 c8 r4 c8^\tutti c16 c c8 h
    c c r4 e8 e d c
    h h r4 g16[^\solo d e fis] g[ \hA fis g a]
    h[ d, e fis] g[ a h c] d16. g,32 g8 r4
    h8^\tutti h16 h h8 h c c r4
  }
}

SopranoLyrics = \lyricmode {
  Glo -- _ _ _
  _ ri -- a, glo -- ri -- a in ex --
  cel -- sis, in ex -- cel -- sis
  De -- o, glo -- _
  _ _ _ ri -- a,
  glo -- ri -- a in ex -- cel -- sis,
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1
    r2 g'8^\tutti g16 g g8 g
    g g r4 g8 g g g
    g g r4 r2
    R1
    g8 g16 g g8 g g g r4
  }
}

AltoLyrics = \lyricmode {
  Glo -- ri -- a in ex --
  cel -- sis, in ex -- cel -- sis
  De -- o,

  glo -- ri -- a in ex -- cel -- sis,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1
    r2 e8^\tutti e16 e e8 d
    e e r4 c8 c d d
    d d r4 r2
    R1
    d8 d16 d d8 d e e r4
  }
}

TenoreLyrics = \lyricmode {
  Glo -- ri -- a in ex --
  cel -- sis, in ex -- cel -- sis
  De -- o,

  glo -- ri -- a in ex -- cel -- sis,
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1
    r2 c8^\tutti c16 c e8 g
    c c r4 c8 c h a
    g g r4 r2
    R1
    g8 g16 g g8 g c c r4
  }
}

BassoLyrics = \lyricmode {
  Glo -- ri -- a in ex --
  cel -- sis, in ex -- cel -- sis
  De -- o,

  glo -- ri -- a in ex -- cel -- sis,
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c4-\solo r r2
    c4 d8 g c,4-\tutti e8 g
    c4 g c, h8 a
    g4 a8 d g,4-\solo r
    r2 g4 a8 d
    g,4-\tutti g'8 g c4 r
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r4. <_+>8 r2
  r2.. q8
  r1
}


\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "tr" "1, 2" }
        \partCombine #'(0 . 10) \TrombaI \TrombaII
      >>
    >>
    \new Staff {
      \set Staff.instrumentName = "timp"
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
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
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
