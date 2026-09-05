\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    g''2 r4
    g2 r4
    g2 r4
    \pa c,8 e16 d c8 e16 d c d e f
    g8 h16 a g8 h16 a g a h g
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    e'2 r4
    d2 r4
    e2 r4
    R2.*2
  }
}

TrombaI = {
  \relative c' {
    \clef alto
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    g'2 r4
    g2 r4
    g2 r4
    R2.*2
  }
}

TrombaII = {
  \relative c' {
    \clef alto
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    c2 r4
    g2 r4
    c2 r4
    R2.*2
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    c2 r4
    g2 r4
    c2 r4
    R2.*2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    c'8 e16 d c8 e16 d c d e f
    g8 h16 a g8 h16 a g a h h
    c4. c8 c4
    R2.*2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    e'2 e4
    d2 d4
    e4. e8 e4
    R2.*2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
    e'4.^\tutti e8 e4
    d4. d8 d4
    e4. e8 e4
    R2.*2
  }
}

SopranoLyrics = \lyricmode {
  Glo -- ri -- a,
  glo -- ri -- a,
  glo -- ri -- a,
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
    g'4.^\tutti g8 g4
    g4. g8 g4
    g4. g8 g4
    R2.*2
  }
}

AltoLyrics = \lyricmode {
  Glo -- ri -- a,
  glo -- ri -- a,
  glo -- ri -- a,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
    c4.^\tutti c8 c4
    c4. h8 h4
    c4. c8 c4
    R2.*2
  }
}

TenoreLyrics = \lyricmode {
  Glo -- ri -- a,
  glo -- ri -- a,
  glo -- ri -- a,
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \autoBeamOff \tempoMarkup "[no tempo]"
    c'4.^\tutti c8 c4
    g4. g8 g4
    c,4. c8 c4
    R2.*2
  }
}

BassoLyrics = \lyricmode {
  Glo -- ri -- a,
  glo -- ri -- a,
  glo -- ri -- a,
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 3/4 \tempoMarkup "[no tempo]"
    c'4.-\tutti c8 c4
    g4. g8 g4
    c,4. c8 c4
    c'2.-\solo
    h
  }
}

BassFigures = \figuremode {
  r2.
  <5 4>2 <\t 3>4
  r2.
  r
  <6>
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
