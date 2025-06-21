\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "Allegro"
    R2.*2
    \pa r8 c c c c c
    c e16 c e8 e e e \pd
    e g16 e g8 g g g
    c4 r r
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "Allegro"
    R2.*2
    \once \override MultiMeasureRest.staff-position = #-12 R2.
    r8 c c c c c
    c e16 c e8 e e e
    e4 r r
  }
}

TrombaI = {
  \relative c' {
    \clef alto
    \key c \major \time 3/4 \tempoMarkup "Allegro"
    R2.*2
    \pao c4 r r
    \pao c r r
    \pao c r r
    \pao c r r
  }
}

TrombaII = {
  \relative c' {
    \clef alto
    \key c \major \time 3/4 \tempoMarkup "Allegro"
    R2.*2
    c4 r r
    c r r
    c r r
    c r r
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \tempoMarkup "Allegro"
    R2.*2
    c4 r r
    c r r
    c r r
    c r r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "Allegro"
    r16 c' d e f g a h c g e c
    c' g e c c' g e c c'8 h
    c4 c, r
    R2.*2
    r16 c d e f g a h c g e c
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "Allegro"
    e'4. e8 e4
    e4. e8 e d
    e4 e r
    R2.*2
    e4. e8 e4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    e'4.^\tutti e8 e4
    e4. e8 e d
    e4 e r
    R2.*2
    e4. e8 e4
  }
}

SopranoLyrics = \lyricmode {
  Glo -- ri -- a
  in ex -- cel -- sis
  De -- o,

  glo -- ri -- a
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    g'4.^\tutti g8 g4
    g4. g8 g g
    g4 g r
    R2.*2
    g4. g8 g4
  }
}

AltoLyrics = \lyricmode {
  Glo -- ri -- a
  in ex -- cel -- sis
  De -- o,

  glo -- ri -- a
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    c4.^\tutti c8 c4
    c4. c8 c h
    c4 c r
    R2.*2
    c4. c8 c4
  }
}

TenoreLyrics = \lyricmode {
  Glo -- ri -- a
  in ex -- cel -- sis
  De -- o,

  glo -- ri -- a
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    c4.^\tutti c8 c4
    c4. c8 e g
    c4 c, r
    R2.*2
    c4. c8 c4
  }
}

BassoLyrics = \lyricmode {
  Glo -- ri -- a
  in ex -- cel -- sis
  De -- o,

  glo -- ri -- a
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \tempoMarkup "Allegro"
    c4.-\tutti c8 c4
    c c8 c e g
    c4 c, r
    c r r
    c r r
    c4. c8 c4
  }
}

BassFigures = \figuremode {
  r2.
  r
  r
  r
  r
  r
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
