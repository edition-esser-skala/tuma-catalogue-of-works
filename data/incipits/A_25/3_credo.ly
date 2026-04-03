\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*2
    r2 c'
    a4 c d4. c8
    h a h4 c c8 c
    \appoggiatura h4 a2 g16 g' g d d h h g
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    g'2 e4 g
    a4. g8 f( e) f f
    g4 d e e8 e
    e2 f4 f
    d2 e8 f g4~
    g fis g h8 h
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    r2 c'^\tutti
    a4 c d d8 c
    h[ a] h4 c c8 c
    \appoggiatura h4 a2 g4 h8 h
  }
}

SopranoLyrics = \lyricmode {
  Fa --
  cto -- rem coe -- li et
  ter -- rae, coe -- li et
  ter -- rae, vi -- "si -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    g'2^\tutti e4 g
    a4. g8 f[ e] f f
    g4 d e e8 e
    e2 f4 f
    d d e8[ f] g g
    g4 fis g g8 g
  }
}

AltoLyrics = \lyricmode {
  Pa -- trem o --
  mni -- po -- ten -- tem, fa --
  cto -- rem coe -- li et
  ter -- rae, fa --
  cto -- rem coe -- li et
  ter -- _ rae, vi -- "si -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r2 c^\tutti
    a4 c d4. c8
    h[ a] h h c[ d] e4
    c2 a4 a
    h4. a8 g4 e'8 e
    d2 d4 d8 d
  }
}

TenoreLyrics = \lyricmode {
  Pa --
  trem o -- mni -- po --
  ten -- tem, fa -- cto -- rem
  coe -- li, fa --
  cto -- rem coe -- li et
  ter -- rae, vi -- "si -"
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    g'2^\tutti e4 g
    a4. g8 f[ e] f f
    g4. f8 e4 c8 c
    d2 g,4 g'8 g
  }
}

BassoLyrics = \lyricmode {
  Pa -- trem o --
  mni -- po -- ten -- tem, fa --
  cto -- rem coe -- li et
  ter -- rae, vi -- "si -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    c8-\tutti d e d c d e c
    f c f e d d f d
    g g, g' f e d c e
    a a, a' g f e d f
    g g, g' f e d c c
    d4 d, g g'
  }
}

BassFigures = \figuremode {
  r1
  <6>
  r2 q
  r q
  r1
  <5 4>4 <\t _+>2.
}

\score {
  <<
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
