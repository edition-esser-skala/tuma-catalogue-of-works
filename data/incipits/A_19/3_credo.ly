\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*4
    r2 d'4 e
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*4
    r2 g'4 c
  }
}

TrombaI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*4
    r2 g'4 g
  }
}

TrombaII = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*4
    r2 g4 c
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*4
    r2 g4 c
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*3
    c'2 a4 c
    d c h c~
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    g'2 e4 g
    a g f8 e f4
    d2 e4 e
    c8 d e4 f g
    f2 d4 g
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*3
    c'4^\tutti c a c
    d c h8 h c c
  }
}

SopranoLyrics = \lyricmode {
  Et in -- vi -- si --
  bi -- li -- um, in -- "vi -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    g'2^\tutti e4 g
    a g f8[ e] f f
    d4 d e e8 e
    c[ d] e4 f g8 g
    f2 d4 g
  }
}

AltoLyrics = \lyricmode {
  Pa -- trem o --
  mni -- po -- ten -- tem, fa --
  cto -- rem coe -- li et
  ter -- rae, coe -- li et
  ter -- rae, et
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r2 c^\tutti
    a4 c d d8 c
    h[ a] h4 c c
    a8 h c4 c g
    a a8 a h4 e
  }
}

TenoreLyrics = \lyricmode {
  Fa --
  cto -- rem coe -- li et
  ter -- rae, vi -- si --
  bi -- li -- um o -- mni --
  um et in -- vi -- "si -"
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    g'4^\tutti g e g8 g
    a4 g f e8 e
    d4 f g2
  }
}

BassoLyrics = \lyricmode {
  Vi -- si -- bi -- li -- um
  o -- mni -- um et in --
  vi -- si -- "bi -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    c8-\tutti d e d c d e c
    f f e4 d8 c d f
    g g, g' f e d c e
    f f e c f4 e
    d8 e f4 g e8 c
  }
}

BassFigures = \figuremode {
  r1
  r4 <6>2.
  r2 <6>
  r1
  r
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
        \setSoloText "clno 1"
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
