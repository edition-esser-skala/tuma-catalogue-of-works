\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    e'4 r r
    e r r
    e r r
    d r r
    d r r
    d r r
    e r r
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    c'4 r r
    c r r
    c r r
    g r r
    g r r
    g r r
    c r r
  }
}

TrombaI = {
  \relative c' {
    \clef alto
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    g'4 r r
    g r r
    g r r
    g r r
    g r r
    g r r
    g r r
  }
}

TrombaII = {
  \relative c' {
    \clef alto
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    c4 r r
    c r r
    c r r
    g r r
    g r r
    g r r
    c r r
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    c4 r r
    c r r
    c r r
    g r r
    g r r
    g r r
    c r r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    R2.*2
    g''4. f8 e4
    d4. d8 d4
    R2.
    g4. g8 d4
    e4. e8 e4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    R2.*2
    e'4. d8 c4
    h4. h8 h4
    R2.
    h4. h8 d4
    c4. c8 c4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R2.*2
    e'4.^\tutti e8 e4
    d4. d8 d4
    R2.
    d4. d8 d4
    e4. e8 e4
  }
}

SopranoLyrics = \lyricmode {
  Glo -- ri -- a,
  glo -- ri -- a,

  glo -- ri -- a,
  glo -- ri -- a
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R2.*2
    g'4.^\tutti g8 g4
    g4. g8 g4
    R2.
    g4. g8 g4
    g4. g8 g4
  }
}

AltoLyrics = \lyricmode {
  Glo -- ri -- a,
  glo -- ri -- a,

  glo -- ri -- a,
  glo -- ri -- a
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R2.*2
    c4.^\tutti c8 c4
    h4. h8 h4
    R2.
    h4. h8 h4
    c4. c8 c4
  }
}

TenoreLyrics = \lyricmode {
  Glo -- ri -- a,
  glo -- ri -- a,

  glo -- ri -- a,
  glo -- ri -- a
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R2.*2
    c'4.^\tutti c8 c4
    g4. g8 g4
    R2.
    g,4. g8 g4
    c4. c8 c4
  }
}

BassoLyrics = \lyricmode {
  Glo -- ri -- a,
  glo -- ri -- a,

  glo -- ri -- a,
  glo -- ri -- a
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    c8-\tutti c' h c g c
    e, c' h c e, g
    c, c' h c e, c
    g' g fis g d g
    h, g' fis g h, d
    g, g' fis g h, g
    c c' h c g c
  }
}

BassFigures = \figuremode {
  %tacet
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
