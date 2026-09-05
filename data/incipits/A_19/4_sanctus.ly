\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Largo"
    R1*5
    r2 g''4 g8 g
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Largo"
    R1*5
    r2 e'4 e8 e
  }
}

TrombaI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Largo"
    R1*5
    r2 \pa c4 c8 c
  }
}

TrombaII = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Largo"
    R1*5
    r2 c4 c8 c
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Largo"
    R1*5
    r2 c4 c
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Largo"
    c'1
    h2 g'16 d d8~ d16 h h g
    g4 r h'2
    c a16 e e8~ e16 c c a
    a4 r a'2
    h16 gis gis8~ gis16 e e h e,8 e' e e
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Largo"
    c'1
    h2 g'16 d d8~ d16 h h g
    g4 r d'2
    c a'16 e e8~ e16 c c a
    a4 e'2 d4
    e2 e4 e
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    c'1^\tutti
    h2 r
    d1
    c2 r
    e2. d4
    e2 e8. e16 e4
  }
}

SopranoLyrics = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san -- _
  ctus Do -- mi -- nus,
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    r2 a'~^\tutti
    a4 g r2
    r h~
    h4 a r2
    r a
    gis g8. g16 g4
  }
}

AltoLyrics = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san --
  ctus Do -- mi -- nus,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    r2 d^\tutti
    d r
    r e
    e r
    r c4 a
    h2 c8. c16 c4
  }
}

TenoreLyrics = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san -- _
  ctus Do -- mi -- nus,
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    r2 fis^\tutti
    g r
    r gis
    a r
    r f
    e c8. c16 c4
  }
}

BassoLyrics = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san --
  ctus Do -- mi -- nus,
}

Organo = {
  \relative c {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Largo"
    c''2-\tutti \clef bass fis,,
    g g,-\solo
    \clef soprano d'''-\tutti \clef bass gis,,
    a a,-\solo
    \clef soprano e'''-\tutti \clef bass f,,
    e c4 c
  }
}

BassFigures = \figuremode {
  r2 <6 5>
  <9>4 <8>2.
  r2 <6 5>
  <9>4 <8>2.
  r2 <7>4 <6>
  <_+>1
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
