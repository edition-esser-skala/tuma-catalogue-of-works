\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1*2
    r2 g''16 f g a f e f g
    e4 r r2
    R1*2
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1*2
    r2 e'16 d e f d c d e
    c4 r r2
    R1*2
  }
}

TrombaI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1*2
    r2 r4 r8 g'
    g4 r r2
    R1*2
  }
}

TrombaII = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1*2
    r2 r4 r8 g
    c4 r r2
    R1*2
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1*2
    r2 r4 r8 g
    c4 r r2
    R1*2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    e'4 g8 g g e16 f g8 g
    f g e f d e c d
    h c d4 c r
    r16 c' c e, d8 h' r16 a a c, h8 g'
    r16 f f a, g8 e' r16 d h c r f d e
    r a f g f d e c d8 g, r4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c'4 e8 e e c16 d e4
    d c h a
    g a8 h c4 r
    r h16 d e d c4 g16 h c h
    a4 e16 g a g a8. g16 h8. c16
    a8. g16 a h c8 h4 r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    e'8.^\tutti e16 e8 e e e, r e'
    d4 c h a
    h8 c c[ h] c4 r
    R1*2
    r2 h8. h16 h8 h
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son, e --
  lei -- _ _ _
  son, e -- lei -- son,

  Ky -- ri -- e "e -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    g'8.^\tutti g16 g8 g g g r a
    f[ g e f] d[ e c d]
    d g a[ g] g4 r
    R1*2
    r2 g8. g16 g8 g
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son, e --
  lei -- _
  son, e -- lei -- son,

  Ky -- ri -- e "e -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    c8.^\tutti c16 c8 c c c, r c'
    d4 e8 c d[ h c a]
    g g d'4 e r
    R1*2
    r2 d8. d16 d8 d
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son, e --
  lei -- son, e -- lei --
  son, e -- lei -- son,

  Ky -- ri -- e "e -"
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    c'8.^\tutti c16 c8 c c c, r c'~
    c h4 a g f8~
    f[ e f g] c,4 r
    R1*2
    r2 g'8. g16 g8 g
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son, e --
  lei -- _ _ _
  son,

  Ky -- ri -- e "e -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c'4.-\tutti c8 c c, r c'~
    c h4 a g f8~
    f e f g c,4 r8 g'-\solo
    c,4 g' a e
    f c f8. e16 d8. c16
    f8. e16 d8 c g4-\tutti g'
  }
}

BassFigures = \figuremode {
  r1
  <2>8 <6> <2> <6> <2> <6> <2> <6>
  <2>4 <6 5>2.
  r1
  r2 <6>8. q16 q8. q16
  r8. q16 r2.
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
